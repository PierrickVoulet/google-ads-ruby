# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v1/resources/customer_feed.proto

require 'google/protobuf'

require 'google/ads/google_ads/v1/common/matching_function_pb'
require 'google/ads/google_ads/v1/enums/feed_link_status_pb'
require 'google/ads/google_ads/v1/enums/placeholder_type_pb'
require 'google/protobuf/wrappers_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v1.resources.CustomerFeed" do
    optional :resource_name, :string, 1
    optional :feed, :message, 2, "google.protobuf.StringValue"
    repeated :placeholder_types, :enum, 3, "google.ads.googleads.v1.enums.PlaceholderTypeEnum.PlaceholderType"
    optional :matching_function, :message, 4, "google.ads.googleads.v1.common.MatchingFunction"
    optional :status, :enum, 5, "google.ads.googleads.v1.enums.FeedLinkStatusEnum.FeedLinkStatus"
  end
end

module Google::Ads::GoogleAds::V1::Resources
  CustomerFeed = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.resources.CustomerFeed").msgclass
end