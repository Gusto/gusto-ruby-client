# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class GetV1EmployeesEmployeeIdFederalTaxesResponse < ::Crystalline::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Example response
      field :employee_federal_tax, T.nilable(::GustoEmbedded::Shared::EmployeeFederalTax)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, employee_federal_tax: T.nilable(::GustoEmbedded::Shared::EmployeeFederalTax)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, employee_federal_tax: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @employee_federal_tax = employee_federal_tax
      end
    end
  end
end
