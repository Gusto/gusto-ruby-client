# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # Information about the token owner
    class ResourceOwner < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :type, ::OpenApiSDK::Operations::GetV1TokenInfoType, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Operations::GetV1TokenInfoType, false) } }
      # UUID of resource owner
      field :uuid, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('uuid') } }


      sig { params(type: ::OpenApiSDK::Operations::GetV1TokenInfoType, uuid: ::String).void }
      def initialize(type: nil, uuid: nil)
        @type = type
        @uuid = uuid
      end
    end
  end
end
