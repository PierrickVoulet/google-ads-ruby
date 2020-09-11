# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v5/resources/keyword_plan_campaign_keyword.proto

require 'google/protobuf'

require 'google/ads/google_ads/v5/enums/keyword_match_type_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/wrappers_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/ads/googleads/v5/resources/keyword_plan_campaign_keyword.proto", :syntax => :proto3) do
    add_message "google.ads.googleads.v5.resources.KeywordPlanCampaignKeyword" do
      optional :resource_name, :string, 1
      optional :keyword_plan_campaign, :message, 2, "google.protobuf.StringValue"
      optional :id, :message, 3, "google.protobuf.Int64Value"
      optional :text, :message, 4, "google.protobuf.StringValue"
      optional :match_type, :enum, 5, "google.ads.googleads.v5.enums.KeywordMatchTypeEnum.KeywordMatchType"
      optional :negative, :message, 7, "google.protobuf.BoolValue"
    end
  end
end

module Google
  module Ads
    module GoogleAds
      module V5
        module Resources
          KeywordPlanCampaignKeyword = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v5.resources.KeywordPlanCampaignKeyword").msgclass
        end
      end
    end
  end
end