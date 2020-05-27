#!/usr/bin/ruby
# Encoding: utf-8
#
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Utility that generates up resource names for entities given IDs.

require "google/ads/google_ads/utils/path_lookup_definer"
require "google/ads/google_ads/utils/path_lookup_config"

module Google
  module Ads
    module GoogleAds
      module Utils
        def self.build_path_lookup_class(version)
          Class.new do
            define_method(:lookups) do
              GoogleAds.const_get("Utils::PathLookupConfig::PATH_LOOKUP_#{version.upcase}")
            end

            define_method(:respond_to_missing?) do |name, include_private=false|
              lookups.include?(name) || super
            end

            define_method(:method_missing) do |name, *args, **kwargs|
              if !lookups.include?(name)
                raise NoMethodError, "undefined method `#{name}' for #{inspect}"
              end

              if args.any? { |arg| arg.nil? }
                raise ArgumentError, "invalid args for #{name}: #{args.inspect}"
              end

              define_lookup_method(name, version)
              send(name, *args, **kwargs)
            end

            define_method(:define_lookup_method) do |name, version|
              Utils::PathLookupDefiner.new(self, name, lookups.fetch(name)).call(version)
            end
          end
        end
      end
    end
  end
end
