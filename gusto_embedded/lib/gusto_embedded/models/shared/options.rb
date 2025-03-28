# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  

    class Options < ::Crystalline::FieldAugmented
      extend T::Sig

      # A display label that corresponds to the answer value
      field :label, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('label') } }
      # An allowed value to answer the question
      field :value, T.nilable(::Object), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('value') } }


      sig { params(label: ::String, value: T.nilable(::Object)).void }
      def initialize(label: nil, value: nil)
        @label = label
        @value = value
      end
    end
  end
end
