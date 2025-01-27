# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetAchTransactionsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the company
      field :company_uuid, ::String, { 'path_param': { 'field_name': 'company_uuid', 'style': 'simple', 'explode': false } }
      # The UUID of the contractor payment
      field :contractor_payment_uuid, T.nilable(::String), { 'query_param': { 'field_name': 'contractor_payment_uuid', 'style': 'form', 'explode': true } }
      # Used to filter the ACH transactions to only include those with a specific payment direction, either "credit" or "debit".
      field :payment_direction, T.nilable(::String), { 'query_param': { 'field_name': 'payment_direction', 'style': 'form', 'explode': true } }
      # The UUID of the payroll
      field :payroll_uuid, T.nilable(::String), { 'query_param': { 'field_name': 'payroll_uuid', 'style': 'form', 'explode': true } }
      # Used to filter the ACH transactions to only include those with a specific transaction type, such as "Credit employee pay".
      field :transaction_type, T.nilable(::String), { 'query_param': { 'field_name': 'transaction_type', 'style': 'form', 'explode': true } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::OpenApiSDK::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(company_uuid: ::String, contractor_payment_uuid: T.nilable(::String), payment_direction: T.nilable(::String), payroll_uuid: T.nilable(::String), transaction_type: T.nilable(::String), x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).void }
      def initialize(company_uuid: nil, contractor_payment_uuid: nil, payment_direction: nil, payroll_uuid: nil, transaction_type: nil, x_gusto_api_version: nil)
        @company_uuid = company_uuid
        @contractor_payment_uuid = contractor_payment_uuid
        @payment_direction = payment_direction
        @payroll_uuid = payroll_uuid
        @transaction_type = transaction_type
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
