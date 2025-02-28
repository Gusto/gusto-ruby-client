# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class Errors < ::Crystalline::FieldAugmented
      extend T::Sig


      field :base, T.nilable(T::Array[::GustoEmbedded::Operations::Base]), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('base') } }


      sig { params(base: T.nilable(T::Array[::GustoEmbedded::Operations::Base])).void }
      def initialize(base: nil)
        @base = base
      end
    end
  end
end
