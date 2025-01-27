# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PutV1VerifyWebhookSubscriptionUuidSecurity < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :system_access_auth, ::String, { 'security': { 'scheme': true, 'type': 'http', 'sub_type': 'bearer', 'field_name': 'Authorization' } }


      sig { params(system_access_auth: ::String).void }
      def initialize(system_access_auth: nil)
        @system_access_auth = system_access_auth
      end
    end
  end
end
