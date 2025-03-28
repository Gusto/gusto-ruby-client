# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # The representation of a termination in Gusto.
    class Termination < ::Crystalline::FieldAugmented
      extend T::Sig

      # The UUID of the termination object.
      field :uuid, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('uuid') } }
      # Whether the employee's termination has gone into effect.
      field :active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('active') } }
      # Whether the employee's termination is cancelable. Cancelable is true if `run_termination_payroll` is false and `effective_date` is in the future.
      field :cancelable, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('cancelable') } }
      # The employee's last day of work.
      field :effective_date, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('effective_date') } }
      # The UUID of the employee to which this termination is attached.
      field :employee_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('employee_uuid') } }
      # If true, the employee should receive their final wages via an off-cycle payroll. If false, they should receive their final wages on their current pay schedule.
      field :run_termination_payroll, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('run_termination_payroll') } }
      # The current version of the object. See the [versioning guide](https://docs.gusto.com/embedded-payroll/docs/idempotency) for information on how to use this field.
      field :version, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('version') } }


      sig { params(uuid: ::String, active: T.nilable(T::Boolean), cancelable: T.nilable(T::Boolean), effective_date: T.nilable(::String), employee_uuid: T.nilable(::String), run_termination_payroll: T.nilable(T::Boolean), version: T.nilable(::String)).void }
      def initialize(uuid: nil, active: nil, cancelable: nil, effective_date: nil, employee_uuid: nil, run_termination_payroll: nil, version: nil)
        @uuid = uuid
        @active = active
        @cancelable = cancelable
        @effective_date = effective_date
        @employee_uuid = employee_uuid
        @run_termination_payroll = run_termination_payroll
        @version = version
      end
    end
  end
end
