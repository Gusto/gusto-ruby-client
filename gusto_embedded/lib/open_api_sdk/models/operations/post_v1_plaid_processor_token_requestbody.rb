# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PostV1PlaidProcessorTokenRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The owner UUID of the bank account
      field :owner_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('owner_id') } }
      # The owner type of the bank account
      field :owner_type, ::OpenApiSDK::Operations::OwnerType, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('owner_type'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Operations::OwnerType, false) } }
      # The Plaid processor token
      field :processor_token, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('processor_token') } }


      sig { params(owner_id: ::String, owner_type: ::OpenApiSDK::Operations::OwnerType, processor_token: ::String).void }
      def initialize(owner_id: nil, owner_type: nil, processor_token: nil)
        @owner_id = owner_id
        @owner_type = owner_type
        @processor_token = processor_token
      end
    end
  end
end
