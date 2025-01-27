# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # A custom field on a company
    class CompanyCustomField < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Name of the company custom field
      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # Input type for the custom field.
      field :type, ::OpenApiSDK::Shared::CustomFieldType, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Shared::CustomFieldType, false) } }
      # UUID of the company custom field
      field :uuid, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('uuid') } }
      # Description of the company custom field
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('description') } }
      # An array of options for fields of type radio. Otherwise, null.
      field :selection_options, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('selection_options') } }


      sig { params(name: ::String, type: ::OpenApiSDK::Shared::CustomFieldType, uuid: ::String, description: T.nilable(::String), selection_options: T.nilable(T::Array[::String])).void }
      def initialize(name: nil, type: nil, uuid: nil, description: nil, selection_options: nil)
        @name = name
        @type = type
        @uuid = uuid
        @description = description
        @selection_options = selection_options
      end
    end
  end
end
