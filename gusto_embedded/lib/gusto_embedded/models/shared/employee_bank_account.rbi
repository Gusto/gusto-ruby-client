# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::EmployeeBankAccount
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::EmployeeBankAccount
  def uuid(); end
  def uuid=(str_); end
  def employee_uuid(); end
  def employee_uuid=(str_); end
  def account_type(); end
  def account_type=(str_); end
  def name(); end
  def name=(str_); end
  def routing_number(); end
  def routing_number=(str_); end
  def hidden_account_number(); end
  def hidden_account_number=(str_); end
end