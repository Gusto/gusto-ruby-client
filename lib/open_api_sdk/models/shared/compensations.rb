# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # The available company-wide compensation rates for the company.
    class Compensations < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The available fixed compensation rates for the company.
      field :fixed, T.nilable(T::Array[::OpenApiSDK::Shared::Fixed]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('fixed') } }
      # The available hourly compensation rates for the company.
      field :hourly, T.nilable(T::Array[::OpenApiSDK::Shared::Hourly]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('hourly') } }
      # The available types of paid time off for the company.
      field :paid_time_off, T.nilable(T::Array[::OpenApiSDK::Shared::CompanyPaidTimeOff]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('paid_time_off') } }


      sig { params(fixed: T.nilable(T::Array[::OpenApiSDK::Shared::Fixed]), hourly: T.nilable(T::Array[::OpenApiSDK::Shared::Hourly]), paid_time_off: T.nilable(T::Array[::OpenApiSDK::Shared::CompanyPaidTimeOff])).void }
      def initialize(fixed: nil, hourly: nil, paid_time_off: nil)
        @fixed = fixed
        @hourly = hourly
        @paid_time_off = paid_time_off
      end
    end
  end
end
