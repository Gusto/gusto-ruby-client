# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PutV1CompaniesCompanyIdPaySchedulesPayScheduleIdRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the company
      field :company_id, ::String, { 'path_param': { 'field_name': 'company_id', 'style': 'simple', 'explode': false } }
      # The UUID of the pay schedule
      field :pay_schedule_id, ::String, { 'path_param': { 'field_name': 'pay_schedule_id', 'style': 'simple', 'explode': false } }

      field :request_body, T.nilable(::OpenApiSDK::Operations::PutV1CompaniesCompanyIdPaySchedulesPayScheduleIdRequestBody), { 'request': { 'media_type': 'application/json' } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::OpenApiSDK::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(company_id: ::String, pay_schedule_id: ::String, request_body: T.nilable(::OpenApiSDK::Operations::PutV1CompaniesCompanyIdPaySchedulesPayScheduleIdRequestBody), x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).void }
      def initialize(company_id: nil, pay_schedule_id: nil, request_body: nil, x_gusto_api_version: nil)
        @company_id = company_id
        @pay_schedule_id = pay_schedule_id
        @request_body = request_body
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
