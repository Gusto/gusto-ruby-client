# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # The company attachment
    class CompanyAttachment < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The category of the company attachment
      field :category, T.nilable(::OpenApiSDK::Shared::Category), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('category'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Shared::Category, true) } }
      # name of the file uploaded
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # The ISO 8601 timestamp of when an attachment was uploaded
      field :upload_time, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('upload_time') } }
      # UUID of the company attachment
      field :uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('uuid') } }


      sig { params(category: T.nilable(::OpenApiSDK::Shared::Category), name: T.nilable(::String), upload_time: T.nilable(::String), uuid: T.nilable(::String)).void }
      def initialize(category: nil, name: nil, upload_time: nil, uuid: nil)
        @category = category
        @name = name
        @upload_time = upload_time
        @uuid = uuid
      end
    end
  end
end
