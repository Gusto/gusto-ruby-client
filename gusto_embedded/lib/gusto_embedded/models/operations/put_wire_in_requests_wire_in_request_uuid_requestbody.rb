# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class PutWireInRequestsWireInRequestUuidRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig

      # Amount of money sent
      field :amount_sent, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('amount_sent') } }
      # Name of the bank sending the wire
      field :bank_name, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('bank_name') } }
      # The date the wire was sent
      field :date_sent, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('date_sent') } }
      # Additional notes
      field :additional_notes, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('additional_notes') } }


      sig { params(amount_sent: ::String, bank_name: ::String, date_sent: ::String, additional_notes: T.nilable(::String)).void }
      def initialize(amount_sent: nil, bank_name: nil, date_sent: nil, additional_notes: nil)
        @amount_sent = amount_sent
        @bank_name = bank_name
        @date_sent = date_sent
        @additional_notes = additional_notes
      end
    end
  end
end
