# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # Requires a policy name, a policy_type, and an accrual_method
    class PostCompaniesCompanyUuidTimeOffPoliciesRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Accrual method of the time off policy
      field :accrual_method, ::OpenApiSDK::Operations::PostCompaniesCompanyUuidTimeOffPoliciesAccrualMethod, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('accrual_method'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Operations::PostCompaniesCompanyUuidTimeOffPoliciesAccrualMethod, false) } }
      # Name of the time off policy
      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # Type of the time off policy. Currently only "vacation" and "sick" are supported
      field :policy_type, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('policy_type') } }
      # The rate at which the time off hours will accrue for an employee on the policy. Represented as a float, e.g. "40.0".
      field :accrual_rate, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('accrual_rate') } }
      # The number of hours an employee has to work or be paid for to accrue the number of hours set in the accrual rate. Only used for hourly policies (per_hour_paid, per_hour_paid_no_overtime, per_hour_work, per_hour_worked_no_overtime). Represented as a float, e.g. "40.0".
      field :accrual_rate_unit, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('accrual_rate_unit') } }
      # Number of days before an employee on the policy will begin accruing time off hours. If accrual_method is per_anniversary_year, per_calendar_year, or unlimited, then accrual_waiting_period_days should be 0.
      field :accrual_waiting_period_days, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('accrual_waiting_period_days') } }
      # The max number of hours an employee can carryover from one year to the next. If accrual_method is unlimited, then carryover_limit_hours must be blank.
      field :carryover_limit_hours, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('carryover_limit_hours') } }
      # The max number of hours an employee can accrue in a year. If accrual_method is unlimited, then max_accrual_hours_per_year must be blank.
      field :max_accrual_hours_per_year, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('max_accrual_hours_per_year') } }
      # The max number of hours an employee can accrue. If accrual_method is unlimited, then max_hours must be blank.
      field :max_hours, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('max_hours') } }
      # Boolean representing if an employee's accrued time off hours will be paid out on termination
      field :paid_out_on_termination, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('paid_out_on_termination') } }


      sig { params(accrual_method: ::OpenApiSDK::Operations::PostCompaniesCompanyUuidTimeOffPoliciesAccrualMethod, name: ::String, policy_type: ::String, accrual_rate: T.nilable(::String), accrual_rate_unit: T.nilable(::String), accrual_waiting_period_days: T.nilable(::Integer), carryover_limit_hours: T.nilable(::String), max_accrual_hours_per_year: T.nilable(::String), max_hours: T.nilable(::String), paid_out_on_termination: T.nilable(T::Boolean)).void }
      def initialize(accrual_method: nil, name: nil, policy_type: nil, accrual_rate: nil, accrual_rate_unit: nil, accrual_waiting_period_days: nil, carryover_limit_hours: nil, max_accrual_hours_per_year: nil, max_hours: nil, paid_out_on_termination: nil)
        @accrual_method = accrual_method
        @name = name
        @policy_type = policy_type
        @accrual_rate = accrual_rate
        @accrual_rate_unit = accrual_rate_unit
        @accrual_waiting_period_days = accrual_waiting_period_days
        @carryover_limit_hours = carryover_limit_hours
        @max_accrual_hours_per_year = max_accrual_hours_per_year
        @max_hours = max_hours
        @paid_out_on_termination = paid_out_on_termination
      end
    end
  end
end
