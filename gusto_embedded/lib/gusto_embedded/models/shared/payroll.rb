# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # Example response
    class Payroll < ::Crystalline::FieldAugmented
      extend T::Sig

      # Indicates whether the payroll is an auto pilot payroll
      field :auto_pilot, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('auto_pilot') } }
      # A timestamp of the last valid payroll calculation. Null if there isn't a valid calculation.
      field :calculated_at, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('calculated_at') } }
      # The date on which employees will be paid for the payroll.
      field :check_date, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('check_date') } }
      # An array of taxes applicable to this payroll in addition to taxes included in `employee_compensations`. Only included for processed or calculated payrolls when `taxes` is present in the `include` parameter.
      field :company_taxes, T.nilable(T::Array[::GustoEmbedded::Shared::PayrollCompanyTaxesType]), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('company_taxes') } }
      # The UUID of the company for the payroll.
      field :company_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('company_uuid') } }
      # Datetime for when the resource was created.
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Only included for processed payrolls
      field :credit_blockers, T.nilable(T::Array[::GustoEmbedded::Shared::PayrollCreditBlockersType]), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('credit_blockers') } }

      field :employee_compensations, T.nilable(T::Array[::GustoEmbedded::Shared::PayrollEmployeeCompensationsType]), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('employee_compensations') } }
      # Indicates whether the payroll is an external payroll
      field :external, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('external') } }
      # Indicates whether the payroll is the final payroll for a terminated employee. Only included for off-cycle payrolls.
      field :final_termination_payroll, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('final_termination_payroll') } }
      # Enable taxes to be withheld at the IRS's required rate of 22% for federal income taxes. State income taxes will be taxed at the state's supplemental tax rate. Otherwise, we'll sum the entirety of the employee's wages and withhold taxes on the entire amount at the rate for regular wages. Only included for off-cycle payrolls.
      field :fixed_withholding_rate, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('fixed_withholding_rate') } }
      # Indicates whether the payroll is an off-cycle payroll
      field :off_cycle, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('off_cycle') } }
      # The off-cycle reason. Only included for off-cycle payrolls.
      field :off_cycle_reason, T.nilable(::GustoEmbedded::Shared::OffCycleReasonType), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('off_cycle_reason'), 'decoder': Utils.enum_from_string(::GustoEmbedded::Shared::OffCycleReasonType, true) } }

      field :pay_period, T.nilable(::GustoEmbedded::Shared::PayrollPayPeriodType), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('pay_period') } }
      # Only applicable when a payroll is moved to four day processing instead of fast ach.
      field :payment_speed_changed, T.nilable(::GustoEmbedded::Shared::PayrollPaymentSpeedChangedType), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('payment_speed_changed') } }
      # A timestamp that is the deadline for the payroll to be run in order for employees to be paid on time.  If payroll has not been run by the deadline, a prepare request will update both the check date and deadline to reflect the soonest employees can be paid and the deadline by which the payroll must be run in order for said check date to be met.
      field :payroll_deadline, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('payroll_deadline'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Information about the payroll's status and expected dates
      field :payroll_status_meta, T.nilable(::GustoEmbedded::Shared::PayrollPayrollStatusMetaType), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('payroll_status_meta') } }
      # The UUID of the payroll.
      field :payroll_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('payroll_uuid') } }
      # Whether or not the payroll has been successfully processed. Note that processed payrolls cannot be updated. Additionally, a payroll is not guaranteed to be processed just because the payroll deadline has passed. Late payrolls are not uncommon. Conversely, users may choose to run payroll before the payroll deadline.
      field :processed, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('processed') } }
      # The date at which the payroll was processed. Null if the payroll isn't processed yet.
      field :processed_date, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('processed_date') } }

      field :processing_request, T.nilable(::GustoEmbedded::Shared::PayrollProcessingRequest), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('processing_request') } }
      # Block regular deductions and contributions for this payroll.  Only included for off-cycle payrolls.
      field :skip_regular_deductions, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('skip_regular_deductions') } }
      # Only included for processed or calculated payrolls
      field :submission_blockers, T.nilable(T::Array[::GustoEmbedded::Shared::PayrollSubmissionBlockersType]), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('submission_blockers') } }
      # The subtotals for the payroll.
      field :totals, T.nilable(::GustoEmbedded::Shared::PayrollTotalsType), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('totals') } }
      # The UUID of the payroll.
      field :uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('uuid') } }
      # The payment schedule tax rate the payroll is based on. Only included for off-cycle payrolls.
      field :withholding_pay_period, T.nilable(::GustoEmbedded::Shared::PayrollWithholdingPayPeriodType), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('withholding_pay_period'), 'decoder': Utils.enum_from_string(::GustoEmbedded::Shared::PayrollWithholdingPayPeriodType, true) } }


      sig { params(auto_pilot: T.nilable(T::Boolean), calculated_at: T.nilable(::String), check_date: T.nilable(::String), company_taxes: T.nilable(T::Array[::GustoEmbedded::Shared::PayrollCompanyTaxesType]), company_uuid: T.nilable(::String), created_at: T.nilable(::DateTime), credit_blockers: T.nilable(T::Array[::GustoEmbedded::Shared::PayrollCreditBlockersType]), employee_compensations: T.nilable(T::Array[::GustoEmbedded::Shared::PayrollEmployeeCompensationsType]), external: T.nilable(T::Boolean), final_termination_payroll: T.nilable(T::Boolean), fixed_withholding_rate: T.nilable(T::Boolean), off_cycle: T.nilable(T::Boolean), off_cycle_reason: T.nilable(::GustoEmbedded::Shared::OffCycleReasonType), pay_period: T.nilable(::GustoEmbedded::Shared::PayrollPayPeriodType), payment_speed_changed: T.nilable(::GustoEmbedded::Shared::PayrollPaymentSpeedChangedType), payroll_deadline: T.nilable(::DateTime), payroll_status_meta: T.nilable(::GustoEmbedded::Shared::PayrollPayrollStatusMetaType), payroll_uuid: T.nilable(::String), processed: T.nilable(T::Boolean), processed_date: T.nilable(::String), processing_request: T.nilable(::GustoEmbedded::Shared::PayrollProcessingRequest), skip_regular_deductions: T.nilable(T::Boolean), submission_blockers: T.nilable(T::Array[::GustoEmbedded::Shared::PayrollSubmissionBlockersType]), totals: T.nilable(::GustoEmbedded::Shared::PayrollTotalsType), uuid: T.nilable(::String), withholding_pay_period: T.nilable(::GustoEmbedded::Shared::PayrollWithholdingPayPeriodType)).void }
      def initialize(auto_pilot: nil, calculated_at: nil, check_date: nil, company_taxes: nil, company_uuid: nil, created_at: nil, credit_blockers: nil, employee_compensations: nil, external: nil, final_termination_payroll: nil, fixed_withholding_rate: nil, off_cycle: nil, off_cycle_reason: nil, pay_period: nil, payment_speed_changed: nil, payroll_deadline: nil, payroll_status_meta: nil, payroll_uuid: nil, processed: nil, processed_date: nil, processing_request: nil, skip_regular_deductions: nil, submission_blockers: nil, totals: nil, uuid: nil, withholding_pay_period: nil)
        @auto_pilot = auto_pilot
        @calculated_at = calculated_at
        @check_date = check_date
        @company_taxes = company_taxes
        @company_uuid = company_uuid
        @created_at = created_at
        @credit_blockers = credit_blockers
        @employee_compensations = employee_compensations
        @external = external
        @final_termination_payroll = final_termination_payroll
        @fixed_withholding_rate = fixed_withholding_rate
        @off_cycle = off_cycle
        @off_cycle_reason = off_cycle_reason
        @pay_period = pay_period
        @payment_speed_changed = payment_speed_changed
        @payroll_deadline = payroll_deadline
        @payroll_status_meta = payroll_status_meta
        @payroll_uuid = payroll_uuid
        @processed = processed
        @processed_date = processed_date
        @processing_request = processing_request
        @skip_regular_deductions = skip_regular_deductions
        @submission_blockers = submission_blockers
        @totals = totals
        @uuid = uuid
        @withholding_pay_period = withholding_pay_period
      end
    end
  end
end
