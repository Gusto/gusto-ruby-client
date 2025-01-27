# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PutV1EmployeesEmployeeIdI9AuthorizationEmployerSignResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Example response
      field :i9_authorization, T.nilable(::OpenApiSDK::Shared::I9Authorization)
      # Unprocessable Entity 
      #   
      # This may happen when the body of your request contains errors such as `invalid_attribute_value`, or the request fails due to an `invalid_operation`. See the [Errors Categories](https://docs.gusto.com/embedded-payroll/docs/error-categories) guide for more details.
      # 
      field :unprocessable_entity_error_object, T.nilable(::OpenApiSDK::Shared::UnprocessableEntityErrorObject)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, i9_authorization: T.nilable(::OpenApiSDK::Shared::I9Authorization), unprocessable_entity_error_object: T.nilable(::OpenApiSDK::Shared::UnprocessableEntityErrorObject)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, i9_authorization: nil, unprocessable_entity_error_object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @i9_authorization = i9_authorization
        @unprocessable_entity_error_object = unprocessable_entity_error_object
      end
    end
  end
end
