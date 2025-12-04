# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::PayrollReversal
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::PayrollReversal
  def reversed_payroll_uuid(); end
  def reversed_payroll_uuid=(str_); end
  def reversal_payroll_uuid(); end
  def reversal_payroll_uuid=(str_); end
  def reason(); end
  def reason=(str_); end
  def category(); end
  def category=(str_); end
  def reversed_employee_uuids(); end
  def reversed_employee_uuids=(str_); end
  def approved_at(); end
  def approved_at=(str_); end
end