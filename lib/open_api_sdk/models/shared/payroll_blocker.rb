# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # Example response
    class PayrollBlocker < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The unique identifier of the reason
      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }
      # User-friendly message describing the payroll blocker.
      field :message, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('message') } }


      sig { params(key: T.nilable(::String), message: T.nilable(::String)).void }
      def initialize(key: nil, message: nil)
        @key = key
        @message = message
      end
    end
  end
end
