# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class MlkDay < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :date, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('date') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }

      field :selected, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('selected') } }


      sig { params(date: T.nilable(::String), name: T.nilable(::String), selected: T.nilable(T::Boolean)).void }
      def initialize(date: nil, name: nil, selected: nil)
        @date = date
        @name = name
        @selected = selected
      end
    end
  end
end
