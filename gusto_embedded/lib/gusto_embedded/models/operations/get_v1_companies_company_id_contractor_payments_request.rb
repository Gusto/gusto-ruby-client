# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class GetV1CompaniesCompanyIdContractorPaymentsRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # The UUID of the company
      field :company_id, ::String, { 'path_param': { 'field_name': 'company_id', 'style': 'simple', 'explode': false } }
      # The time period for which to retrieve contractor payments. If left empty, defaults to today's date.
      field :end_date, ::String, { 'query_param': { 'field_name': 'end_date', 'style': 'form', 'explode': true } }
      # The time period for which to retrieve contractor payments
      field :start_date, ::String, { 'query_param': { 'field_name': 'start_date', 'style': 'form', 'explode': true } }
      # The UUID of the contractor. When specified, will load all payments for that contractor.
      field :contractor_uuid, T.nilable(::String), { 'query_param': { 'field_name': 'contractor_uuid', 'style': 'form', 'explode': true } }
      # Display contractor payments results group by check date if set to true.
      field :group_by_date, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'group_by_date', 'style': 'form', 'explode': true } }
      # The page that is requested. When unspecified, will load all objects unless endpoint forces pagination.
      field :page, T.nilable(::Integer), { 'query_param': { 'field_name': 'page', 'style': 'form', 'explode': true } }
      # Number of objects per page. For majority of endpoints will default to 25
      field :per, T.nilable(::Integer), { 'query_param': { 'field_name': 'per', 'style': 'form', 'explode': true } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::GustoEmbedded::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(company_id: ::String, end_date: ::String, start_date: ::String, contractor_uuid: T.nilable(::String), group_by_date: T.nilable(T::Boolean), page: T.nilable(::Integer), per: T.nilable(::Integer), x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).void }
      def initialize(company_id: nil, end_date: nil, start_date: nil, contractor_uuid: nil, group_by_date: nil, page: nil, per: nil, x_gusto_api_version: nil)
        @company_id = company_id
        @end_date = end_date
        @start_date = start_date
        @contractor_uuid = contractor_uuid
        @group_by_date = group_by_date
        @page = page
        @per = per
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
