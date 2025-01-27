# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetV1ContractorsContractorUuidAddressResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Example response
      field :contractor_address, T.nilable(::OpenApiSDK::Shared::ContractorAddress)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, contractor_address: T.nilable(::OpenApiSDK::Shared::ContractorAddress)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, contractor_address: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @contractor_address = contractor_address
      end
    end
  end
end
