# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetWireInRequestsWireInRequestUuidResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Example response
      field :wire_in_request, T.nilable(::OpenApiSDK::Shared::WireInRequest)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, wire_in_request: T.nilable(::OpenApiSDK::Shared::WireInRequest)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, wire_in_request: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @wire_in_request = wire_in_request
      end
    end
  end
end
