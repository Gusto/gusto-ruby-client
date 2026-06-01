# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::SupportedBenefit
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::SupportedBenefit
  def benefit_type(); end
  def benefit_type=(str_); end
  def name(); end
  def name=(str_); end
  def description(); end
  def description=(str_); end
  def pretax(); end
  def pretax=(str_); end
  def posttax(); end
  def posttax=(str_); end
  def imputed(); end
  def imputed=(str_); end
  def healthcare(); end
  def healthcare=(str_); end
  def retirement(); end
  def retirement=(str_); end
  def yearly_limit(); end
  def yearly_limit=(str_); end
  def category(); end
  def category=(str_); end
  def writable_by_application(); end
  def writable_by_application=(str_); end
end
