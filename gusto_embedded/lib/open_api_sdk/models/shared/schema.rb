# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class Schema < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # the holiday's end date (YYYY-MM-DD)
      field :end_date, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('end_date') } }
      # the holiday's identifier
      field :holiday_key, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('holiday_key') } }
      # the holiday's official name
      field :holiday_name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('holiday_name') } }
      # the holiday's start date (YYYY-MM-DD)
      field :start_date, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('start_date') } }


      sig { params(end_date: T.nilable(::String), holiday_key: T.nilable(::String), holiday_name: T.nilable(::String), start_date: T.nilable(::String)).void }
      def initialize(end_date: nil, holiday_key: nil, holiday_name: nil, start_date: nil)
        @end_date = end_date
        @holiday_key = holiday_key
        @holiday_name = holiday_name
        @start_date = start_date
      end
    end
  end
end
