# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # The representation of a company in Gusto.
    class Company < ::Crystalline::FieldAugmented
      extend T::Sig

      # A unique identifier of the company in Gusto.
      field :uuid, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('uuid') } }
      # The status of the company in Gusto. "Approved" companies are approved to run payroll from a risk and compliance perspective. However, an approved company may still need to resolve other [payroll blockers](https://docs.gusto.com/embedded-payroll/docs/payroll-blockers) to be able to run payroll. "Not Approved" companies may not yet run payroll with Gusto and may need to complete onboarding or contact support. "Suspended" companies may not run payroll with Gusto. In order to unsuspend their account, the company must contact support.
      field :company_status, T.nilable(::GustoEmbedded::Shared::CompanyStatus), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('company_status'), 'decoder': Utils.enum_from_string(::GustoEmbedded::Shared::CompanyStatus, true) } }
      # The available company-wide compensation rates for the company.
      field :compensations, T.nilable(::GustoEmbedded::Shared::Compensations), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('compensations') } }
      # Whether the company only supports contractors.
      field :contractor_only, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('contractor_only') } }
      # The Federal Employer Identification Number of the company.
      field :ein, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('ein') } }
      # The tax payer type of the company.
      field :entity_type, T.nilable(::GustoEmbedded::Shared::EntityType), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('entity_type'), 'decoder': Utils.enum_from_string(::GustoEmbedded::Shared::EntityType, true) } }
      # Company's default funding type
      field :funding_type, T.nilable(::GustoEmbedded::Shared::FundingType), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('funding_type'), 'decoder': Utils.enum_from_string(::GustoEmbedded::Shared::FundingType, true) } }
      # Whether the company is fully managed by a partner via the API
      field :is_partner_managed, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('is_partner_managed') } }
      # Whether or not the company is suspended in Gusto. Suspended companies may not run payroll.
      field :is_suspended, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('is_suspended') } }
      # Company's first invoiceable event date
      field :join_date, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('join_date') } }
      # The locations of the company.
      field :locations, T.nilable(T::Array[::GustoEmbedded::Shared::CompanyAddress]), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('locations') } }
      # The name of the company.
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('name') } }
      # The pay schedule assignment type.
      field :pay_schedule_type, T.nilable(::GustoEmbedded::Shared::PayScheduleType), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('pay_schedule_type'), 'decoder': Utils.enum_from_string(::GustoEmbedded::Shared::PayScheduleType, true) } }
      # The primary payroll admin of the company.
      field :primary_payroll_admin, T.nilable(::GustoEmbedded::Shared::PrimaryPayrollAdmin), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('primary_payroll_admin') } }
      # The primary signatory of the company.
      field :primary_signatory, T.nilable(::GustoEmbedded::Shared::PrimarySignatory), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('primary_signatory') } }
      # The slug of the name of the company.
      field :slug, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('slug') } }
      # The Gusto product tier of the company (not applicable to Embedded partner managed companies).
      field :tier, T.nilable(::GustoEmbedded::Shared::Tier), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('tier'), 'decoder': Utils.enum_from_string(::GustoEmbedded::Shared::Tier, true) } }
      # The trade name of the company.
      field :trade_name, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('trade_name') } }


      sig { params(uuid: ::String, company_status: T.nilable(::GustoEmbedded::Shared::CompanyStatus), compensations: T.nilable(::GustoEmbedded::Shared::Compensations), contractor_only: T.nilable(T::Boolean), ein: T.nilable(::String), entity_type: T.nilable(::GustoEmbedded::Shared::EntityType), funding_type: T.nilable(::GustoEmbedded::Shared::FundingType), is_partner_managed: T.nilable(T::Boolean), is_suspended: T.nilable(T::Boolean), join_date: T.nilable(::String), locations: T.nilable(T::Array[::GustoEmbedded::Shared::CompanyAddress]), name: T.nilable(::String), pay_schedule_type: T.nilable(::GustoEmbedded::Shared::PayScheduleType), primary_payroll_admin: T.nilable(::GustoEmbedded::Shared::PrimaryPayrollAdmin), primary_signatory: T.nilable(::GustoEmbedded::Shared::PrimarySignatory), slug: T.nilable(::String), tier: T.nilable(::GustoEmbedded::Shared::Tier), trade_name: T.nilable(::String)).void }
      def initialize(uuid: nil, company_status: nil, compensations: nil, contractor_only: nil, ein: nil, entity_type: nil, funding_type: nil, is_partner_managed: nil, is_suspended: nil, join_date: nil, locations: nil, name: nil, pay_schedule_type: nil, primary_payroll_admin: nil, primary_signatory: nil, slug: nil, tier: nil, trade_name: nil)
        @uuid = uuid
        @company_status = company_status
        @compensations = compensations
        @contractor_only = contractor_only
        @ein = ein
        @entity_type = entity_type
        @funding_type = funding_type
        @is_partner_managed = is_partner_managed
        @is_suspended = is_suspended
        @join_date = join_date
        @locations = locations
        @name = name
        @pay_schedule_type = pay_schedule_type
        @primary_payroll_admin = primary_payroll_admin
        @primary_signatory = primary_signatory
        @slug = slug
        @tier = tier
        @trade_name = trade_name
      end
    end
  end
end
