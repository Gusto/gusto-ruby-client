# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PostV1WebhookSubscriptionRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :subscription_types, T::Array[::OpenApiSDK::Operations::SubscriptionTypes], { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('subscription_types') } }

      field :url, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('url') } }


      sig { params(subscription_types: T::Array[::OpenApiSDK::Operations::SubscriptionTypes], url: ::String).void }
      def initialize(subscription_types: nil, url: nil)
        @subscription_types = subscription_types
        @url = url
      end
    end
  end
end
