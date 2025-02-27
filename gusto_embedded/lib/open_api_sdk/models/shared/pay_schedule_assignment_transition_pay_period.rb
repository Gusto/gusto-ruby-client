# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # Pay schedule assignment transition pay period information.
    class PayScheduleAssignmentTransitionPayPeriod < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Pay period end date.
      field :end_date, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('end_date') } }
      # Pay period start date.
      field :start_date, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('start_date') } }


      sig { params(end_date: T.nilable(::String), start_date: T.nilable(::String)).void }
      def initialize(end_date: nil, start_date: nil)
        @end_date = end_date
        @start_date = start_date
      end
    end
  end
end
