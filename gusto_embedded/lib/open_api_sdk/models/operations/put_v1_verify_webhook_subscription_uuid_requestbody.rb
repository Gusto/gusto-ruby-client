# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PutV1VerifyWebhookSubscriptionUuidRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The token POSTed to the Subscription URL.
      field :verification_token, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('verification_token') } }


      sig { params(verification_token: ::String).void }
      def initialize(verification_token: nil)
        @verification_token = verification_token
      end
    end
  end
end
