# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # Whether the employee deduction amount should be treated as a percentage to be deducted from each payroll.
    class DeductAsPercentage < ::Crystalline::FieldAugmented
      extend T::Sig


      field :choices, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('choices') } }

      field :default_value, T.nilable(::GustoEmbedded::Shared::BenefitTypeRequirementsDeductAsPercentageDefaultValue), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('default_value') } }

      field :editable, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('editable') } }

      field :required, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('required') } }


      sig { params(choices: T.nilable(T::Array[::String]), default_value: T.nilable(::GustoEmbedded::Shared::BenefitTypeRequirementsDeductAsPercentageDefaultValue), editable: T.nilable(T::Boolean), required: T.nilable(T::Boolean)).void }
      def initialize(choices: nil, default_value: nil, editable: nil, required: nil)
        @choices = choices
        @default_value = default_value
        @editable = editable
        @required = required
      end
    end
  end
end
