# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  

    class MinimumWages < ::Crystalline::FieldAugmented
      extend T::Sig

      # The effective date of the minimum wage.
      field :effective_date, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('effective_date') } }
      # The UUID of the minimum wage.
      field :uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('uuid') } }
      # The wage amount.
      field :wage, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('wage') } }


      sig { params(effective_date: T.nilable(::String), uuid: T.nilable(::String), wage: T.nilable(::String)).void }
      def initialize(effective_date: nil, uuid: nil, wage: nil)
        @effective_date = effective_date
        @uuid = uuid
        @wage = wage
      end
    end
  end
end
