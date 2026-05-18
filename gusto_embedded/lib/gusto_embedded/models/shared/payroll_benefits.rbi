# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::PayrollBenefits
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::PayrollBenefits
  def payroll_uuid(); end
  def payroll_uuid=(str_); end
  def payroll_type(); end
  def payroll_type=(str_); end
  def check_date(); end
  def check_date=(str_); end
  def gross_pay(); end
  def gross_pay=(str_); end
  def imputed_pay(); end
  def imputed_pay=(str_); end
  def company_benefit_deduction(); end
  def company_benefit_deduction=(str_); end
  def company_benefit_contribution(); end
  def company_benefit_contribution=(str_); end
  def pay_period(); end
  def pay_period=(str_); end
end
