# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v6/common/dates.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/ads/googleads/v6/common/dates.proto", :syntax => :proto3) do
    add_message "google.ads.googleads.v6.common.DateRange" do
      proto3_optional :start_date, :string, 3
      proto3_optional :end_date, :string, 4
    end
  end
end

module Google
  module Ads
    module GoogleAds
      module V6
        module Common
          DateRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v6.common.DateRange").msgclass
        end
      end
    end
  end
end
