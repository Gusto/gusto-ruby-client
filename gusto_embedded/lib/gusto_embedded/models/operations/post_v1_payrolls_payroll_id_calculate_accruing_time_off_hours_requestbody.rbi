# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Operations::PostV1PayrollsPayrollIdCalculateAccruingTimeOffHoursRequestBody
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Operations::PostV1PayrollsPayrollIdCalculateAccruingTimeOffHoursRequestBody
  def regular_hours_worked(); end
  def regular_hours_worked=(str_); end
  def overtime_hours_worked(); end
  def overtime_hours_worked=(str_); end
  def double_overtime_hours_worked(); end
  def double_overtime_hours_worked=(str_); end
  def pto_hours_used(); end
  def pto_hours_used=(str_); end
  def sick_hours_used(); end
  def sick_hours_used=(str_); end
end