# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # The representation of an external payroll.
    class ExternalPayroll < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the external payroll.
      field :uuid, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('uuid') } }
      # Applicable benefits based on company provisioning.
      field :applicable_benefits, T.nilable(T::Array[::OpenApiSDK::Shared::ApplicableBenefits]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('applicable_benefits') } }
      # Applicable earnings based on company provisioning.
      field :applicable_earnings, T.nilable(T::Array[::OpenApiSDK::Shared::ApplicableEarnings]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('applicable_earnings') } }
      # Applicable taxes based on company provisioning.
      field :applicable_taxes, T.nilable(T::Array[::OpenApiSDK::Shared::ApplicableTaxes]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('applicable_taxes') } }
      # External payroll's check date.
      field :check_date, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('check_date') } }
      # The UUID of the company.
      field :company_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('company_uuid') } }
      # External payroll items for employees
      field :external_payroll_items, T.nilable(T::Array[::OpenApiSDK::Shared::ExternalPayrollItems]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('external_payroll_items') } }
      # Stores metadata of the external payroll.
      field :metadata, T.nilable(::OpenApiSDK::Shared::ExternalPayrollMetadata), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('metadata') } }
      # External payroll's pay period end date.
      field :payment_period_end_date, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('payment_period_end_date') } }
      # External payroll's pay period start date.
      field :payment_period_start_date, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('payment_period_start_date') } }
      # The status of the external payroll. The status will be `unprocessed` when the external payroll is created and transition to `processed` once tax liabilities are entered and finalized.  Once in the `processed` status all actions that can edit an external payroll will be disabled.
      field :status, T.nilable(::OpenApiSDK::Shared::Status), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Shared::Status, true) } }


      sig { params(uuid: ::String, applicable_benefits: T.nilable(T::Array[::OpenApiSDK::Shared::ApplicableBenefits]), applicable_earnings: T.nilable(T::Array[::OpenApiSDK::Shared::ApplicableEarnings]), applicable_taxes: T.nilable(T::Array[::OpenApiSDK::Shared::ApplicableTaxes]), check_date: T.nilable(::String), company_uuid: T.nilable(::String), external_payroll_items: T.nilable(T::Array[::OpenApiSDK::Shared::ExternalPayrollItems]), metadata: T.nilable(::OpenApiSDK::Shared::ExternalPayrollMetadata), payment_period_end_date: T.nilable(::String), payment_period_start_date: T.nilable(::String), status: T.nilable(::OpenApiSDK::Shared::Status)).void }
      def initialize(uuid: nil, applicable_benefits: nil, applicable_earnings: nil, applicable_taxes: nil, check_date: nil, company_uuid: nil, external_payroll_items: nil, metadata: nil, payment_period_end_date: nil, payment_period_start_date: nil, status: nil)
        @uuid = uuid
        @applicable_benefits = applicable_benefits
        @applicable_earnings = applicable_earnings
        @applicable_taxes = applicable_taxes
        @check_date = check_date
        @company_uuid = company_uuid
        @external_payroll_items = external_payroll_items
        @metadata = metadata
        @payment_period_end_date = payment_period_end_date
        @payment_period_start_date = payment_period_start_date
        @status = status
      end
    end
  end
end
