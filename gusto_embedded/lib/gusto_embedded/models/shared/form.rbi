# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::Form
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::Form
  def uuid(); end
  def uuid=(str_); end
  def name(); end
  def name=(str_); end
  def title(); end
  def title=(str_); end
  def description(); end
  def description=(str_); end
  def draft(); end
  def draft=(str_); end
  def requires_signing(); end
  def requires_signing=(str_); end
  def year(); end
  def year=(str_); end
  def quarter(); end
  def quarter=(str_); end
  def document_content_type(); end
  def document_content_type=(str_); end
end