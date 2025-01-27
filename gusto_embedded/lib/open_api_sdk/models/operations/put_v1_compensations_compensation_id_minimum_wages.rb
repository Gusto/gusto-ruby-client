# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # The minimum wage record you want to apply to the compensation
    class PutV1CompensationsCompensationIdMinimumWages < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the minimum wage record. Required if adjust_for_minimum_wage set to true
      field :uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('uuid') } }


      sig { params(uuid: T.nilable(::String)).void }
      def initialize(uuid: nil)
        @uuid = uuid
      end
    end
  end
end
