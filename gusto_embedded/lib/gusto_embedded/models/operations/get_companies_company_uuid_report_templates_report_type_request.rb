# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class GetCompaniesCompanyUuidReportTemplatesReportTypeRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # The UUID of the company
      field :company_uuid, ::String, { 'path_param': { 'field_name': 'company_uuid', 'style': 'simple', 'explode': false } }
      # The report type
      field :report_type, ::String, { 'path_param': { 'field_name': 'report_type', 'style': 'simple', 'explode': false } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::GustoEmbedded::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(company_uuid: ::String, report_type: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).void }
      def initialize(company_uuid: nil, report_type: nil, x_gusto_api_version: nil)
        @company_uuid = company_uuid
        @report_type = report_type
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
