# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetV1EmployeesEmployeeIdI9AuthorizationDocumentOptionsResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Example response
      field :i9_authorization_document_options_object, T.nilable(T::Array[::OpenApiSDK::Shared::I9AuthorizationDocumentOption])


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, i9_authorization_document_options_object: T.nilable(T::Array[::OpenApiSDK::Shared::I9AuthorizationDocumentOption])).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, i9_authorization_document_options_object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @i9_authorization_document_options_object = i9_authorization_document_options_object
      end
    end
  end
end
