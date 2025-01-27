# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class Document < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The description of the document
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('description') } }
      # If the document is in a draft state
      field :draft, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('draft') } }
      # List of the document's fields and associated data. Values are set for auto-filled fields. This is only returned for documents with `required_signing` = `true`, and can be used for signing preparation.
      field :fields_, T.nilable(T::Array[::OpenApiSDK::Shared::Fields]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('fields') } }
      # The type identifier of the document
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # List of the document's pages and associated image URLs. This is only returned for documents with `required_signing` = `true`, and can be used for signing preparation.
      field :pages, T.nilable(T::Array[::OpenApiSDK::Shared::Pages]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('pages') } }
      # The quarter of this document. This value is nullable and will not be present on all documents.
      field :quarter, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('quarter') } }
      # The type of recipient associated with the document (will be `Contractor` for Contractor Documents)
      field :recipient_type, T.nilable(::OpenApiSDK::Shared::RecipientType), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('recipient_type'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Shared::RecipientType, true) } }
      # Unique identifier for the recipient associated with the document
      field :recipient_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('recipient_uuid') } }
      # A boolean flag that indicates whether the document needs signing or not. Note that this value will change after the document is signed.
      field :requires_signing, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('requires_signing') } }
      # When the document was signed (will be `null` if unsigned)
      field :signed_at, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('signed_at') } }
      # The title of the document
      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title') } }
      # The UUID of the document
      field :uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('uuid') } }
      # The year of this document. This value is nullable and will not be present on all documents.
      field :year, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('year') } }


      sig { params(description: T.nilable(::String), draft: T.nilable(T::Boolean), fields_: T.nilable(T::Array[::OpenApiSDK::Shared::Fields]), name: T.nilable(::String), pages: T.nilable(T::Array[::OpenApiSDK::Shared::Pages]), quarter: T.nilable(::Integer), recipient_type: T.nilable(::OpenApiSDK::Shared::RecipientType), recipient_uuid: T.nilable(::String), requires_signing: T.nilable(T::Boolean), signed_at: T.nilable(::String), title: T.nilable(::String), uuid: T.nilable(::String), year: T.nilable(::Integer)).void }
      def initialize(description: nil, draft: nil, fields_: nil, name: nil, pages: nil, quarter: nil, recipient_type: nil, recipient_uuid: nil, requires_signing: nil, signed_at: nil, title: nil, uuid: nil, year: nil)
        @description = description
        @draft = draft
        @fields_ = fields_
        @name = name
        @pages = pages
        @quarter = quarter
        @recipient_type = recipient_type
        @recipient_uuid = recipient_uuid
        @requires_signing = requires_signing
        @signed_at = signed_at
        @title = title
        @uuid = uuid
        @year = year
      end
    end
  end
end
