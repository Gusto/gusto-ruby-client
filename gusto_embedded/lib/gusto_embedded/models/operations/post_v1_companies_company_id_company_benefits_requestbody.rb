# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class PostV1CompaniesCompanyIdCompanyBenefitsRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig

      # The description of the company benefit. For example, a company may offer multiple benefits with an ID of 1 (for Medical Insurance). The description would show something more specific like “Kaiser Permanente” or “Blue Cross/ Blue Shield”.
      field :description, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('description') } }
      # Whether this benefit is active for employee participation.
      field :active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('active') } }
      # The ID of the benefit to which the company benefit belongs.
      field :benefit_type, T.nilable(::Integer), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('benefit_type') } }
      # Whether the employer is subject to file W-2 forms for an employee on leave. Only applicable to third party sick pay benefits.
      field :responsible_for_employee_w2, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('responsible_for_employee_w2') } }
      # Whether the employer is subject to pay employer taxes when an employee is on leave. Only applicable to third party sick pay benefits.
      field :responsible_for_employer_taxes, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('responsible_for_employer_taxes') } }


      sig { params(description: ::String, active: T.nilable(T::Boolean), benefit_type: T.nilable(::Integer), responsible_for_employee_w2: T.nilable(T::Boolean), responsible_for_employer_taxes: T.nilable(T::Boolean)).void }
      def initialize(description: nil, active: nil, benefit_type: nil, responsible_for_employee_w2: nil, responsible_for_employer_taxes: nil)
        @description = description
        @active = active
        @benefit_type = benefit_type
        @responsible_for_employee_w2 = responsible_for_employee_w2
        @responsible_for_employer_taxes = responsible_for_employer_taxes
      end
    end
  end
end
