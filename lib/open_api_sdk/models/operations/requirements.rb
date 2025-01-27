# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class Requirements < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # An identifier for an individual requirement. Uniqueness is guaranteed within a requirement set.
      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }

      field :value, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('value') } }


      sig { params(key: T.nilable(::String), value: T.nilable(::String)).void }
      def initialize(key: nil, value: nil)
        @key = key
        @value = value
      end
    end
  end
end
