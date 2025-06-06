# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class PutCompaniesCompanyUuidHolidayPayPolicyAddResponse < ::Crystalline::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Holiday Pay Policy Object Example
      field :holiday_pay_policy, T.nilable(::GustoEmbedded::Shared::HolidayPayPolicy)
      # Unprocessable Entity 
      #   
      # This may happen when the body of your request contains errors such as `invalid_attribute_value`, or the request fails due to an `invalid_operation`. See the [Errors Categories](https://docs.gusto.com/embedded-payroll/docs/error-categories) guide for more details.
      # 
      field :unprocessable_entity_error_object, T.nilable(::GustoEmbedded::Shared::UnprocessableEntityErrorObject)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, holiday_pay_policy: T.nilable(::GustoEmbedded::Shared::HolidayPayPolicy), unprocessable_entity_error_object: T.nilable(::GustoEmbedded::Shared::UnprocessableEntityErrorObject)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, holiday_pay_policy: nil, unprocessable_entity_error_object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @holiday_pay_policy = holiday_pay_policy
        @unprocessable_entity_error_object = unprocessable_entity_error_object
      end
    end
  end
end
