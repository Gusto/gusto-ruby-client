# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class PutV1TerminationsEmployeeIdRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig

      # The employee's last day of work.
      field :effective_date, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('effective_date') } }
      # The current version of the object. See the [versioning guide](https://docs.gusto.com/embedded-payroll/docs/idempotency) for information on how to use this field.
      field :version, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('version') } }
      # If true, the employee should receive their final wages via an off-cycle payroll. If false, they should receive their final wages on their current pay schedule.
      field :run_termination_payroll, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('run_termination_payroll') } }


      sig { params(effective_date: ::String, version: ::String, run_termination_payroll: T.nilable(T::Boolean)).void }
      def initialize(effective_date: nil, version: nil, run_termination_payroll: nil)
        @effective_date = effective_date
        @version = version
        @run_termination_payroll = run_termination_payroll
      end
    end
  end
end
