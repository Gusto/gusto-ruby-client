# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::ContractorPayments
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::ContractorPayments
  def contractor_uuid(); end
  def contractor_uuid=(str_); end
  def contractor_first_name(); end
  def contractor_first_name=(str_); end
  def contractor_last_name(); end
  def contractor_last_name=(str_); end
  def contractor_business_name(); end
  def contractor_business_name=(str_); end
  def contractor_type(); end
  def contractor_type=(str_); end
  def payment_method(); end
  def payment_method=(str_); end
  def wage(); end
  def wage=(str_); end
  def bonus(); end
  def bonus=(str_); end
  def reimbursement(); end
  def reimbursement=(str_); end
end
