# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::EmployeeBenefits
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::EmployeeBenefits
  def employee_uuid(); end
  def employee_uuid=(str_); end
  def company_benefit_uuid(); end
  def company_benefit_uuid=(str_); end
  def company_contribution(); end
  def company_contribution=(str_); end
  def uuid(); end
  def uuid=(str_); end
  def contribution(); end
  def contribution=(str_); end
  def active(); end
  def active=(str_); end
  def deduct_as_percentage(); end
  def deduct_as_percentage=(str_); end
  def employee_deduction(); end
  def employee_deduction=(str_); end
end