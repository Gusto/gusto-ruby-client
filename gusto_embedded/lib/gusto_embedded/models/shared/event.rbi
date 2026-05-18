# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Shared::Event
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Shared::Event
  def uuid(); end
  def uuid=(str_); end
  def event_type(); end
  def event_type=(str_); end
  def resource_type(); end
  def resource_type=(str_); end
  def resource_uuid(); end
  def resource_uuid=(str_); end
  def entity_type(); end
  def entity_type=(str_); end
  def entity_uuid(); end
  def entity_uuid=(str_); end
  def timestamp(); end
  def timestamp=(str_); end
end
