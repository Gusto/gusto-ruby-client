# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # The representation of a company benefit.
    class CompanyBenefit < ::Crystalline::FieldAugmented
      extend T::Sig

      # The UUID of the company benefit.
      field :uuid, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('uuid') } }
      # Whether this benefit is active for employee participation. Company benefits may only be deactivated if no employees are actively participating.
      field :active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('active') } }
      # The type of the benefit to which the company benefit belongs.
      field :benefit_type, T.nilable(::Integer), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('benefit_type') } }
      # The UUID of the company.
      field :company_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('company_uuid') } }
      # Whether this company benefit can be deleted. Deletable will be set to true if the benefit has not been used in payroll, has no employee benefits associated, and the benefit is not owned by Gusto or a Partner
      field :deletable, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('deletable') } }
      # The description of the company benefit. For example, a company may offer multiple benefits with an ID of 1 (for Medical Insurance). The description would show something more specific like “Kaiser Permanente” or “Blue Cross/ Blue Shield”.
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('description') } }
      # The number of employees enrolled in the benefit, only returned when enrollment_count query param is set to true.
      field :enrollment_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('enrollment_count') } }
      # Whether the employer is subject to file W-2 forms for an employee on leave. Only applicable to third party sick pay benefits.
      field :responsible_for_employee_w2, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('responsible_for_employee_w2') } }
      # Whether the employer is subject to pay employer taxes when an employee is on leave. Only applicable to third party sick pay benefits.
      field :responsible_for_employer_taxes, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('responsible_for_employer_taxes') } }
      # Whether employee deductions and company contributions can be set as percentages of payroll for an individual employee. This is determined by the type of benefit and is not configurable by the company.
      field :supports_percentage_amounts, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('supports_percentage_amounts') } }
      # The current version of the object. See the [versioning guide](https://docs.gusto.com/embedded-payroll/docs/idempotency) for information on how to use this field.
      field :version, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('version') } }


      sig { params(uuid: ::String, active: T.nilable(T::Boolean), benefit_type: T.nilable(::Integer), company_uuid: T.nilable(::String), deletable: T.nilable(T::Boolean), description: T.nilable(::String), enrollment_count: T.nilable(::Integer), responsible_for_employee_w2: T.nilable(T::Boolean), responsible_for_employer_taxes: T.nilable(T::Boolean), supports_percentage_amounts: T.nilable(T::Boolean), version: T.nilable(::String)).void }
      def initialize(uuid: nil, active: nil, benefit_type: nil, company_uuid: nil, deletable: nil, description: nil, enrollment_count: nil, responsible_for_employee_w2: nil, responsible_for_employer_taxes: nil, supports_percentage_amounts: nil, version: nil)
        @uuid = uuid
        @active = active
        @benefit_type = benefit_type
        @company_uuid = company_uuid
        @deletable = deletable
        @description = description
        @enrollment_count = enrollment_count
        @responsible_for_employee_w2 = responsible_for_employee_w2
        @responsible_for_employer_taxes = responsible_for_employer_taxes
        @supports_percentage_amounts = supports_percentage_amounts
        @version = version
      end
    end
  end
end
