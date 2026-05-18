# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::Balances
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::Balances
  def policy_uuid(); end
  def policy_uuid=(str_); end
  def balance_hours(); end
  def balance_hours=(str_); end
  def accrued_hours(); end
  def accrued_hours=(str_); end
  def used_hours(); end
  def used_hours=(str_); end
  def pending_hours(); end
  def pending_hours=(str_); end
end
