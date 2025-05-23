# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class GetV1CompaniesCompanyIdPayrollsRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # The UUID of the company
      field :company_id, ::String, { 'path_param': { 'field_name': 'company_id', 'style': 'simple', 'explode': false } }
      # Return payrolls whose pay period is before the end date. If left empty, defaults to today's date.
      field :end_date, T.nilable(::String), { 'query_param': { 'field_name': 'end_date', 'style': 'form', 'explode': true } }
      # Include the requested attribute in the response. The risk_blockers option will include submission_blockers and credit_blockers if applicable. The reversals option will include reversal payroll UUIDs if applicable. In v2023-04-01 totals are no longer included by default. For multiple attributes comma separate the values, i.e. `?include=totals,payroll_status_meta`
      field :include, T.nilable(T::Array[::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPayrollsQueryParamInclude]), { 'query_param': { 'field_name': 'include', 'style': 'form', 'explode': false } }
      # The page that is requested. When unspecified, will load all objects unless endpoint forces pagination.
      field :page, T.nilable(::Integer), { 'query_param': { 'field_name': 'page', 'style': 'form', 'explode': true } }
      # Whether to include regular and/or off_cycle payrolls in the response, defaults to regular, for multiple attributes comma separate the values, i.e. `?payroll_types=regular,off_cycle`
      field :payroll_types, T.nilable(T::Array[::GustoEmbedded::Operations::PayrollTypes]), { 'query_param': { 'field_name': 'payroll_types', 'style': 'form', 'explode': false } }
      # Number of objects per page. For majority of endpoints will default to 25
      field :per, T.nilable(::Integer), { 'query_param': { 'field_name': 'per', 'style': 'form', 'explode': true } }
      # Whether to include processed and/or unprocessed payrolls in the response, defaults to processed, for multiple attributes comma separate the values, i.e. `?processing_statuses=processed,unprocessed`
      field :processing_statuses, T.nilable(T::Array[::GustoEmbedded::Operations::ProcessingStatuses]), { 'query_param': { 'field_name': 'processing_statuses', 'style': 'form', 'explode': false } }
      # A string indicating whether to sort resulting events in ascending (asc) or descending (desc) chronological order. Events are sorted by their `timestamp`. Defaults to asc if left empty.
      field :sort_order, T.nilable(::GustoEmbedded::Shared::SortOrder), { 'query_param': { 'field_name': 'sort_order', 'style': 'form', 'explode': true } }
      # Return payrolls whose pay period is after the start date
      field :start_date, T.nilable(::String), { 'query_param': { 'field_name': 'start_date', 'style': 'form', 'explode': true } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::GustoEmbedded::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(company_id: ::String, end_date: T.nilable(::String), include: T.nilable(T::Array[::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPayrollsQueryParamInclude]), page: T.nilable(::Integer), payroll_types: T.nilable(T::Array[::GustoEmbedded::Operations::PayrollTypes]), per: T.nilable(::Integer), processing_statuses: T.nilable(T::Array[::GustoEmbedded::Operations::ProcessingStatuses]), sort_order: T.nilable(::GustoEmbedded::Shared::SortOrder), start_date: T.nilable(::String), x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).void }
      def initialize(company_id: nil, end_date: nil, include: nil, page: nil, payroll_types: nil, per: nil, processing_statuses: nil, sort_order: nil, start_date: nil, x_gusto_api_version: nil)
        @company_id = company_id
        @end_date = end_date
        @include = include
        @page = page
        @payroll_types = payroll_types
        @per = per
        @processing_statuses = processing_statuses
        @sort_order = sort_order
        @start_date = start_date
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
