# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Errors::Base
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Errors::Base
  def type(); end
  def type=(str_); end
  def message(); end
  def message=(str_); end
  def full_message(); end
  def full_message=(str_); end
end