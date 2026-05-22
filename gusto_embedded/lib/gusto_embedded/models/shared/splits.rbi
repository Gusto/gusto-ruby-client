# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::Splits
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::Splits
  def bank_account_uuid(); end
  def bank_account_uuid=(str_); end
  def name(); end
  def name=(str_); end
  def hidden_account_number(); end
  def hidden_account_number=(str_); end
  def routing_number(); end
  def routing_number=(str_); end
  def account_type(); end
  def account_type=(str_); end
  def priority(); end
  def priority=(str_); end
  def encrypted_account_number(); end
  def encrypted_account_number=(str_); end
  def split_amount(); end
  def split_amount=(str_); end
end
