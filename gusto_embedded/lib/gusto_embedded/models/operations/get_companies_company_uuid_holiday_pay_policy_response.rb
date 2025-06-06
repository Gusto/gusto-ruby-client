# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class GetCompaniesCompanyUuidHolidayPayPolicyResponse < ::Crystalline::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Holiday Pay Policy Object Example
      field :holiday_pay_policy, T.nilable(::GustoEmbedded::Shared::HolidayPayPolicy)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, holiday_pay_policy: T.nilable(::GustoEmbedded::Shared::HolidayPayPolicy)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, holiday_pay_policy: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @holiday_pay_policy = holiday_pay_policy
      end
    end
  end
end
