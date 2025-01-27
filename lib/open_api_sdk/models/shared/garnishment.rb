# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # Garnishments, or employee deductions, are fixed amounts or percentages deducted from an employee’s pay. They can be deducted a specific number of times or on a recurring basis. Garnishments can also have maximum deductions on a yearly or per-pay-period bases. Common uses for garnishments are court-ordered payments for child support or back taxes. Some companies provide loans to their employees that are repaid via garnishments.
    class Garnishment < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the garnishment in Gusto.
      field :uuid, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('uuid') } }
      # Whether or not this garnishment is currently active.
      field :active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('active') } }
      # The amount of the garnishment. Either a percentage or a fixed dollar amount. Represented as a float, e.g. "8.00".
      field :amount, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('amount') } }
      # The maximum deduction per annum. A null value indicates no maximum. Represented as a float, e.g. "200.00".
      field :annual_maximum, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('annual_maximum') } }
      # Additional child support order details
      field :child_support, T.nilable(::OpenApiSDK::Shared::GarnishmentChildSupport), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('child_support') } }
      # Whether the garnishment is court ordered.
      field :court_ordered, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('court_ordered') } }
      # Whether the amount should be treated as a percentage to be deducted per pay period.
      field :deduct_as_percentage, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('deduct_as_percentage') } }
      # The description of the garnishment.
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('description') } }
      # The UUID of the employee to which this garnishment belongs.
      field :employee_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('employee_uuid') } }
      # The specific type of garnishment for court ordered garnishments.
      field :garnishment_type, T.nilable(::OpenApiSDK::Shared::GarnishmentType), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('garnishment_type'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Shared::GarnishmentType, true) } }
      # The maximum deduction per pay period. A null value indicates no maximum. Represented as a float, e.g. "16.00".
      field :pay_period_maximum, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('pay_period_maximum') } }
      # Whether the garnishment should recur indefinitely.
      field :recurring, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('recurring') } }
      # The number of times to apply the garnishment. Ignored if recurring is true.
      field :times, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('times') } }
      # The current version of the object. See the [versioning guide](https://docs.gusto.com/embedded-payroll/docs/idempotency) for information on how to use this field.
      field :version, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('version') } }


      sig { params(uuid: ::String, active: T.nilable(T::Boolean), amount: T.nilable(::String), annual_maximum: T.nilable(::String), child_support: T.nilable(::OpenApiSDK::Shared::GarnishmentChildSupport), court_ordered: T.nilable(T::Boolean), deduct_as_percentage: T.nilable(T::Boolean), description: T.nilable(::String), employee_uuid: T.nilable(::String), garnishment_type: T.nilable(::OpenApiSDK::Shared::GarnishmentType), pay_period_maximum: T.nilable(::String), recurring: T.nilable(T::Boolean), times: T.nilable(::Integer), version: T.nilable(::String)).void }
      def initialize(uuid: nil, active: nil, amount: nil, annual_maximum: nil, child_support: nil, court_ordered: nil, deduct_as_percentage: nil, description: nil, employee_uuid: nil, garnishment_type: nil, pay_period_maximum: nil, recurring: nil, times: nil, version: nil)
        @uuid = uuid
        @active = active
        @amount = amount
        @annual_maximum = annual_maximum
        @child_support = child_support
        @court_ordered = court_ordered
        @deduct_as_percentage = deduct_as_percentage
        @description = description
        @employee_uuid = employee_uuid
        @garnishment_type = garnishment_type
        @pay_period_maximum = pay_period_maximum
        @recurring = recurring
        @times = times
        @version = version
      end
    end
  end
end
