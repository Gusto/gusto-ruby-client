# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class CheckDate < ::Crystalline::FieldAugmented
      extend T::Sig


      field :full_message, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('full_message') } }

      field :message, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('message') } }

      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('type') } }


      sig { params(full_message: T.nilable(::String), message: T.nilable(::String), type: T.nilable(::String)).void }
      def initialize(full_message: nil, message: nil, type: nil)
        @full_message = full_message
        @message = message
        @type = type
      end
    end
  end
end
