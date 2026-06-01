# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::AchTransaction
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::AchTransaction
  def uuid(); end
  def uuid=(str_); end
  def company_uuid(); end
  def company_uuid=(str_); end
  def payment_event_type(); end
  def payment_event_type=(str_); end
  def payment_event_uuid(); end
  def payment_event_uuid=(str_); end
  def recipient_uuid(); end
  def recipient_uuid=(str_); end
  def transaction_type(); end
  def transaction_type=(str_); end
  def payment_status(); end
  def payment_status=(str_); end
  def payment_direction(); end
  def payment_direction=(str_); end
  def payment_event_check_date(); end
  def payment_event_check_date=(str_); end
  def payment_date(); end
  def payment_date=(str_); end
  def amount(); end
  def amount=(str_); end
  def description(); end
  def description=(str_); end
  def recipient_type(); end
  def recipient_type=(str_); end
  def error_code(); end
  def error_code=(str_); end
end
