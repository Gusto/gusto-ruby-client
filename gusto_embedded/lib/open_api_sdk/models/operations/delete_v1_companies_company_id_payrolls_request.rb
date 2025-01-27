# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class DeleteV1CompaniesCompanyIdPayrollsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the company
      field :company_id, ::String, { 'path_param': { 'field_name': 'company_id', 'style': 'simple', 'explode': false } }
      # The UUID of the payroll
      field :payroll_id, ::String, { 'path_param': { 'field_name': 'payroll_id', 'style': 'simple', 'explode': false } }
      # When true, request an asynchronous delete of the payroll.
      field :async, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'async', 'style': 'form', 'explode': true } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::OpenApiSDK::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(company_id: ::String, payroll_id: ::String, async: T.nilable(T::Boolean), x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).void }
      def initialize(company_id: nil, payroll_id: nil, async: nil, x_gusto_api_version: nil)
        @company_id = company_id
        @payroll_id = payroll_id
        @async = async
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
