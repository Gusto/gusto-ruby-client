# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::Payroll
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::Payroll
  def payroll_deadline(); end
  def payroll_deadline=(str_); end
  def check_date(); end
  def check_date=(str_); end
  def processed(); end
  def processed=(str_); end
  def uuid(); end
  def uuid=(str_); end
  def payroll_uuid(); end
  def payroll_uuid=(str_); end
  def company_uuid(); end
  def company_uuid=(str_); end
  def off_cycle(); end
  def off_cycle=(str_); end
  def auto_pilot(); end
  def auto_pilot=(str_); end
  def external(); end
  def external=(str_); end
  def final_termination_payroll(); end
  def final_termination_payroll=(str_); end
  def pay_period(); end
  def pay_period=(str_); end
  def payroll_status_meta(); end
  def payroll_status_meta=(str_); end
  def totals(); end
  def totals=(str_); end
  def company_taxes(); end
  def company_taxes=(str_); end
  def payroll_taxes(); end
  def payroll_taxes=(str_); end
  def payment_speed_changed(); end
  def payment_speed_changed=(str_); end
  def created_at(); end
  def created_at=(str_); end
  def submission_blockers(); end
  def submission_blockers=(str_); end
  def credit_blockers(); end
  def credit_blockers=(str_); end
  def processed_date(); end
  def processed_date=(str_); end
  def calculated_at(); end
  def calculated_at=(str_); end
  def off_cycle_reason(); end
  def off_cycle_reason=(str_); end
  def withholding_pay_period(); end
  def withholding_pay_period=(str_); end
  def skip_regular_deductions(); end
  def skip_regular_deductions=(str_); end
  def fixed_withholding_rate(); end
  def fixed_withholding_rate=(str_); end
  def processing_request(); end
  def processing_request=(str_); end
  def partner_owned_disbursement(); end
  def partner_owned_disbursement=(str_); end
end
