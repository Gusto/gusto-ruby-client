# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::TaxPayment
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::TaxPayment
  def uuid(); end
  def uuid=(str_); end
  def company_uuid(); end
  def company_uuid=(str_); end
  def agency_name(); end
  def agency_name=(str_); end
  def jurisdiction(); end
  def jurisdiction=(str_); end
  def period_start(); end
  def period_start=(str_); end
  def period_end(); end
  def period_end=(str_); end
  def due_date(); end
  def due_date=(str_); end
  def amount(); end
  def amount=(str_); end
  def amount_paid(); end
  def amount_paid=(str_); end
  def line_items(); end
  def line_items=(str_); end
  def payment_sent_on(); end
  def payment_sent_on=(str_); end
end
