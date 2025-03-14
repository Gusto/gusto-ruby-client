# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class PutV1EmployeesEmployeeIdBankAccountsRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # The UUID of the bank account
      field :bank_account_uuid, ::String, { 'path_param': { 'field_name': 'bank_account_uuid', 'style': 'simple', 'explode': false } }
      # The UUID of the employee
      field :employee_id, ::String, { 'path_param': { 'field_name': 'employee_id', 'style': 'simple', 'explode': false } }

      field :request_body, ::GustoEmbedded::Operations::PutV1EmployeesEmployeeIdBankAccountsRequestBody, { 'request': { 'media_type': 'application/json' } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::GustoEmbedded::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(bank_account_uuid: ::String, employee_id: ::String, request_body: ::GustoEmbedded::Operations::PutV1EmployeesEmployeeIdBankAccountsRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).void }
      def initialize(bank_account_uuid: nil, employee_id: nil, request_body: nil, x_gusto_api_version: nil)
        @bank_account_uuid = bank_account_uuid
        @employee_id = employee_id
        @request_body = request_body
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
