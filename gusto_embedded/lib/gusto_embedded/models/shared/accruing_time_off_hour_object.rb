# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # Example response
    class AccruingTimeOffHourObject < ::Crystalline::FieldAugmented
      extend T::Sig


      field :hours_earned, T::Array[::GustoEmbedded::Shared::AccruingTimeOffHour], { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('hours_earned') } }


      sig { params(hours_earned: T::Array[::GustoEmbedded::Shared::AccruingTimeOffHour]).void }
      def initialize(hours_earned: nil)
        @hours_earned = hours_earned
      end
    end
  end
end
