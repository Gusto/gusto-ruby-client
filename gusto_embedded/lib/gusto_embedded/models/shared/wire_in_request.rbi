# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::WireInRequest
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::WireInRequest
  def uuid(); end
  def uuid=(str_); end
  def status(); end
  def status=(str_); end
  def origination_bank(); end
  def origination_bank=(str_); end
  def origination_bank_address(); end
  def origination_bank_address=(str_); end
  def recipient_name(); end
  def recipient_name=(str_); end
  def recipient_address(); end
  def recipient_address=(str_); end
  def recipient_account_number(); end
  def recipient_account_number=(str_); end
  def recipient_routing_number(); end
  def recipient_routing_number=(str_); end
  def unique_tracking_code(); end
  def unique_tracking_code=(str_); end
  def payment_type(); end
  def payment_type=(str_); end
  def payment_uuid(); end
  def payment_uuid=(str_); end
  def requested_amount(); end
  def requested_amount=(str_); end
  def wire_in_deadline(); end
  def wire_in_deadline=(str_); end
  def additional_notes(); end
  def additional_notes=(str_); end
  def bank_name(); end
  def bank_name=(str_); end
  def date_sent(); end
  def date_sent=(str_); end
  def amount_sent(); end
  def amount_sent=(str_); end
end