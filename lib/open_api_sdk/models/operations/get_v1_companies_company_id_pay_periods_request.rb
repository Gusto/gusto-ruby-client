# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetV1CompaniesCompanyIdPayPeriodsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the company
      field :company_id, ::String, { 'path_param': { 'field_name': 'company_id', 'style': 'simple', 'explode': false } }
      # If left empty, defaults to today's date.
      field :end_date, T.nilable(::String), { 'query_param': { 'field_name': 'end_date', 'style': 'form', 'explode': true } }
      # regular and/or transition. Multiple options are comma separated. The default is regular pay periods if nothing is passed in.
      field :payroll_types, T.nilable(::String), { 'query_param': { 'field_name': 'payroll_types', 'style': 'form', 'explode': true } }

      field :start_date, T.nilable(::String), { 'query_param': { 'field_name': 'start_date', 'style': 'form', 'explode': true } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::OpenApiSDK::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(company_id: ::String, end_date: T.nilable(::String), payroll_types: T.nilable(::String), start_date: T.nilable(::String), x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).void }
      def initialize(company_id: nil, end_date: nil, payroll_types: nil, start_date: nil, x_gusto_api_version: nil)
        @company_id = company_id
        @end_date = end_date
        @payroll_types = payroll_types
        @start_date = start_date
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
