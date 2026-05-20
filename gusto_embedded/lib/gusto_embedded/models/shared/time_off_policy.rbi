# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::TimeOffPolicy
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::TimeOffPolicy
  def uuid(); end
  def uuid=(str_); end
  def company_uuid(); end
  def company_uuid=(str_); end
  def name(); end
  def name=(str_); end
  def policy_type(); end
  def policy_type=(str_); end
  def accrual_method(); end
  def accrual_method=(str_); end
  def is_active(); end
  def is_active=(str_); end
  def employees(); end
  def employees=(str_); end
  def paid_out_on_termination(); end
  def paid_out_on_termination=(str_); end
  def complete(); end
  def complete=(str_); end
  def accrual_rate(); end
  def accrual_rate=(str_); end
  def accrual_rate_unit(); end
  def accrual_rate_unit=(str_); end
  def accrual_waiting_period_days(); end
  def accrual_waiting_period_days=(str_); end
  def carryover_limit_hours(); end
  def carryover_limit_hours=(str_); end
  def max_accrual_hours_per_year(); end
  def max_accrual_hours_per_year=(str_); end
  def max_hours(); end
  def max_hours=(str_); end
  def policy_reset_date(); end
  def policy_reset_date=(str_); end
  def version(); end
  def version=(str_); end
end
