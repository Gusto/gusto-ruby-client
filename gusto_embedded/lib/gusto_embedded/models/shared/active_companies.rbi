# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::ActiveCompanies
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::ActiveCompanies
  def company_uuid(); end
  def company_uuid=(str_); end
  def active_employees(); end
  def active_employees=(str_); end
  def active_contractors(); end
  def active_contractors=(str_); end
  def initial_invoice_period(); end
  def initial_invoice_period=(str_); end
end