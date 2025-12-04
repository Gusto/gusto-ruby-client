# typed: true
# frozen_string_literal: true


class GustoEmbedded::Models::Operations::GetEventsRequest
  extend ::Crystalline::MetadataFields::ClassMethods
end


class GustoEmbedded::Models::Operations::GetEventsRequest
  def starting_after_uuid(); end
  def starting_after_uuid=(str_); end
  def resource_uuid(); end
  def resource_uuid=(str_); end
  def limit(); end
  def limit=(str_); end
  def event_type(); end
  def event_type=(str_); end
  def sort_order(); end
  def sort_order=(str_); end
  def x_gusto_api_version(); end
  def x_gusto_api_version=(str_); end
end