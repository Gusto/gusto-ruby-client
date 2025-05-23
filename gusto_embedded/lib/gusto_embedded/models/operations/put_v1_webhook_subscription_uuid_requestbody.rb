# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class PutV1WebhookSubscriptionUuidRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig


      field :subscription_types, T::Array[::GustoEmbedded::Operations::PutV1WebhookSubscriptionUuidSubscriptionTypes], { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('subscription_types') } }


      sig { params(subscription_types: T::Array[::GustoEmbedded::Operations::PutV1WebhookSubscriptionUuidSubscriptionTypes]).void }
      def initialize(subscription_types: nil)
        @subscription_types = subscription_types
      end
    end
  end
end
