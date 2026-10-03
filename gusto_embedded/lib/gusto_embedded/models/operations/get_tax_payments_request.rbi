# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Operations::GetTaxPaymentsRequest
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Operations::GetTaxPaymentsRequest
  def company_uuid(); end
  def company_uuid=(str_); end
  def jurisdiction(); end
  def jurisdiction=(str_); end
  def payroll_uuids(); end
  def payroll_uuids=(str_); end
  def due_date_from(); end
  def due_date_from=(str_); end
  def due_date_to(); end
  def due_date_to=(str_); end
  def payment_sent_on_from(); end
  def payment_sent_on_from=(str_); end
  def payment_sent_on_to(); end
  def payment_sent_on_to=(str_); end
  def period_start_from(); end
  def period_start_from=(str_); end
  def period_start_to(); end
  def period_start_to=(str_); end
  def period_end_from(); end
  def period_end_from=(str_); end
  def period_end_to(); end
  def period_end_to=(str_); end
  def amount_min(); end
  def amount_min=(str_); end
  def amount_max(); end
  def amount_max=(str_); end
  def sort_by(); end
  def sort_by=(str_); end
  def page(); end
  def page=(str_); end
  def per(); end
  def per=(str_); end
  def x_gusto_api_version(); end
  def x_gusto_api_version=(str_); end
end
