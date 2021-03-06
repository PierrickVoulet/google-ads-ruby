# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v3/resources/click_view.proto

require 'google/protobuf'

require 'google/ads/google_ads/v3/common/click_location_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/wrappers_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/ads/googleads/v3/resources/click_view.proto", :syntax => :proto3) do
    add_message "google.ads.googleads.v3.resources.ClickView" do
      optional :resource_name, :string, 1
      optional :gclid, :message, 2, "google.protobuf.StringValue"
      optional :area_of_interest, :message, 3, "google.ads.googleads.v3.common.ClickLocation"
      optional :location_of_presence, :message, 4, "google.ads.googleads.v3.common.ClickLocation"
      optional :page_number, :message, 5, "google.protobuf.Int64Value"
      optional :ad_group_ad, :message, 7, "google.protobuf.StringValue"
    end
  end
end

module Google
  module Ads
    module GoogleAds
      module V3
        module Resources
          ClickView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.resources.ClickView").msgclass
        end
      end
    end
  end
end
