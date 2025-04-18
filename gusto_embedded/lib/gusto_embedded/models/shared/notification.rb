# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # Representation of a notification
    class Notification < ::Crystalline::FieldAugmented
      extend T::Sig

      # Unique identifier of a notification.
      field :uuid, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('uuid') } }
      # Indicates whether a notification requires action or not. If false, the notification provides critical information only.
      field :actionable, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('actionable') } }
      # Indicates whether a notification may block ability to run payroll. If true, we suggest that these notifications are prioritized to your end users.
      field :can_block_payroll, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('can_block_payroll') } }
      # The notification's category.
      field :category, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('category') } }
      # Unique identifier of the company to which the notification belongs.
      field :company_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('company_uuid') } }
      # Timestamp of when the notification is due. If the notification has no due date, this field will be null.
      field :due_at, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('due_at') } }
      # The message of the notification. This provides additional context for the user and recommends a specific action to resolve the notification.
      field :message, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('message') } }
      # Timestamp of when the notification was published.
      field :published_at, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('published_at') } }
      # An array of entities relevant to the notification
      field :resources, T.nilable(T::Array[::GustoEmbedded::Shared::Resources]), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('resources') } }
      # The title of the notification. This highlights the actionable component of the notification.
      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('title') } }


      sig { params(uuid: ::String, actionable: T.nilable(T::Boolean), can_block_payroll: T.nilable(T::Boolean), category: T.nilable(::String), company_uuid: T.nilable(::String), due_at: T.nilable(::String), message: T.nilable(::String), published_at: T.nilable(::String), resources: T.nilable(T::Array[::GustoEmbedded::Shared::Resources]), title: T.nilable(::String)).void }
      def initialize(uuid: nil, actionable: nil, can_block_payroll: nil, category: nil, company_uuid: nil, due_at: nil, message: nil, published_at: nil, resources: nil, title: nil)
        @uuid = uuid
        @actionable = actionable
        @can_block_payroll = can_block_payroll
        @category = category
        @company_uuid = company_uuid
        @due_at = due_at
        @message = message
        @published_at = published_at
        @resources = resources
        @title = title
      end
    end
  end
end
