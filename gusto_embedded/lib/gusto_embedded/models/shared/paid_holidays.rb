# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # Representation of a company's paid holidays as descibed by their Holiday Pay Policy
    class PaidHolidays < ::Crystalline::FieldAugmented
      extend T::Sig


      field :schema, T.nilable(::GustoEmbedded::Shared::Schema), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('schema') } }


      sig { params(schema: T.nilable(::GustoEmbedded::Shared::Schema)).void }
      def initialize(schema: nil)
        @schema = schema
      end
    end
  end
end
