# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::DetailedPaymentAccountSplit
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::DetailedPaymentAccountSplit
  def bank_account_uuid(); end
  def bank_account_uuid=(str_); end
  def hidden_account_number(); end
  def hidden_account_number=(str_); end
  def name(); end
  def name=(str_); end
  def priority(); end
  def priority=(str_); end
  def split_amount(); end
  def split_amount=(str_); end
  def encrypted_account_number(); end
  def encrypted_account_number=(str_); end
end