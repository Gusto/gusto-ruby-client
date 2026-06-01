# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::ContractorPaymentReceipt
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::ContractorPaymentReceipt
  def contractor_payment_uuid(); end
  def contractor_payment_uuid=(str_); end
  def company_uuid(); end
  def company_uuid=(str_); end
  def name_of_sender(); end
  def name_of_sender=(str_); end
  def name_of_recipient(); end
  def name_of_recipient=(str_); end
  def debit_date(); end
  def debit_date=(str_); end
  def license(); end
  def license=(str_); end
  def license_uri(); end
  def license_uri=(str_); end
  def right_to_refund(); end
  def right_to_refund=(str_); end
  def liability_of_licensee(); end
  def liability_of_licensee=(str_); end
  def totals(); end
  def totals=(str_); end
  def contractor_payments(); end
  def contractor_payments=(str_); end
  def licensee(); end
  def licensee=(str_); end
end
