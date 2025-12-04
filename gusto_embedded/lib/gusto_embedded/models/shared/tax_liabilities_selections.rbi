# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::TaxLiabilitiesSelections
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::TaxLiabilitiesSelections
  def tax_id(); end
  def tax_id=(str_); end
  def tax_name(); end
  def tax_name=(str_); end
  def possible_liabilities(); end
  def possible_liabilities=(str_); end
  def last_unpaid_external_payroll_uuid(); end
  def last_unpaid_external_payroll_uuid=(str_); end
end