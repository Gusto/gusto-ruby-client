# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # Only applicable when a payroll is moved to four day processing instead of fast ach.
    class PayrollPaymentSpeedChangedType < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Current check date.
      field :current_check_date, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('current_check_date') } }
      # Current debit date.
      field :current_debit_date, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('current_debit_date') } }
      # Original check date when fast ach applies.
      field :original_check_date, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('original_check_date') } }
      # Original debit date when fast ach applies.
      field :original_debit_date, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('original_debit_date') } }
      # The reason why the payroll is moved to four day.
      field :reason, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('reason') } }


      sig { params(current_check_date: T.nilable(::String), current_debit_date: T.nilable(::String), original_check_date: T.nilable(::String), original_debit_date: T.nilable(::String), reason: T.nilable(::String)).void }
      def initialize(current_check_date: nil, current_debit_date: nil, original_check_date: nil, original_debit_date: nil, reason: nil)
        @current_check_date = current_check_date
        @current_debit_date = current_debit_date
        @original_check_date = original_check_date
        @original_debit_date = original_debit_date
        @reason = reason
      end
    end
  end
end
