# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class GetInvoicesInvoicePeriodRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # The month we are calculating the invoice for. Must be in YYYY-MM format
      field :invoice_period, ::String, { 'path_param': { 'field_name': 'invoice_period', 'style': 'simple', 'explode': false } }
      # Filter companies returned in the active_companies response, will return an error if company not active during provided invoice period. i.e. `?company_uuids=781922d8-e780-4b6b-bf74-ee303166d022,bbbca930-7322-491c-ba7f-98707a52a9c5`
      field :company_uuids, T.nilable(::String), { 'query_param': { 'field_name': 'company_uuids', 'style': 'form', 'explode': true } }
      # The page that is requested. When unspecified, will load all objects unless endpoint forces pagination.
      field :page, T.nilable(::Integer), { 'query_param': { 'field_name': 'page', 'style': 'form', 'explode': true } }
      # Number of objects per page. For majority of endpoints will default to 25
      field :per, T.nilable(::Integer), { 'query_param': { 'field_name': 'per', 'style': 'form', 'explode': true } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::GustoEmbedded::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(invoice_period: ::String, company_uuids: T.nilable(::String), page: T.nilable(::Integer), per: T.nilable(::Integer), x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).void }
      def initialize(invoice_period: nil, company_uuids: nil, page: nil, per: nil, x_gusto_api_version: nil)
        @invoice_period = invoice_period
        @company_uuids = company_uuids
        @page = page
        @per = per
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
