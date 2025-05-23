# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class GetInformationRequestsResponse < ::Crystalline::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Example response
      field :information_request_list, T.nilable(T::Array[::GustoEmbedded::Shared::InformationRequest])


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, information_request_list: T.nilable(T::Array[::GustoEmbedded::Shared::InformationRequest])).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, information_request_list: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @information_request_list = information_request_list
      end
    end
  end
end
