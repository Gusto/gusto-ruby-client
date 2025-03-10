# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # Representation of a wire in request
    class WireInRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # Notes for the wire in request
      field :additional_notes, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('additional_notes') } }
      # Amount sent through wire in
      field :amount_sent, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('amount_sent') } }
      # Name of the bank initiating the wire in
      field :bank_name, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('bank_name') } }
      # Date the wire in was sent
      field :date_sent, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('date_sent') } }
      # Name of bank receiving the wire in
      field :origination_bank, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('origination_bank') } }
      # Address of bank receiving the wire in
      field :origination_bank_address, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('origination_bank_address') } }
      # Type of payment for the wire in
      field :payment_type, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('payment_type') } }
      # Unique identifier of the payment
      field :payment_uuid, T.nilable(::GustoEmbedded::Shared::PaymentUuid), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('payment_uuid'), 'decoder': Utils.enum_from_string(::GustoEmbedded::Shared::PaymentUuid, true) } }
      # Recipient bank account number
      field :recipient_account_number, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('recipient_account_number') } }
      # Address of the recipient of the wire in
      field :recipient_address, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('recipient_address') } }
      # Name of the recipient of the wire In
      field :recipient_name, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('recipient_name') } }
      # Recipient bank routing number
      field :recipient_routing_number, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('recipient_routing_number') } }
      # Requested amount for the payment
      field :requested_amount, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('requested_amount') } }
      # Status of the wire in
      field :status, T.nilable(::GustoEmbedded::Shared::WireInRequestStatus), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::GustoEmbedded::Shared::WireInRequestStatus, true) } }
      # Include in note with bank to track payment
      field :unique_tracking_code, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('unique_tracking_code') } }
      # Unique identifier of a wire in request
      field :uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('uuid') } }
      # Deadline to submit the wire in
      field :wire_in_deadline, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('wire_in_deadline') } }


      sig { params(additional_notes: T.nilable(::String), amount_sent: T.nilable(::String), bank_name: T.nilable(::String), date_sent: T.nilable(::String), origination_bank: T.nilable(::String), origination_bank_address: T.nilable(::String), payment_type: T.nilable(::String), payment_uuid: T.nilable(::GustoEmbedded::Shared::PaymentUuid), recipient_account_number: T.nilable(::String), recipient_address: T.nilable(::String), recipient_name: T.nilable(::String), recipient_routing_number: T.nilable(::String), requested_amount: T.nilable(::String), status: T.nilable(::GustoEmbedded::Shared::WireInRequestStatus), unique_tracking_code: T.nilable(::String), uuid: T.nilable(::String), wire_in_deadline: T.nilable(::String)).void }
      def initialize(additional_notes: nil, amount_sent: nil, bank_name: nil, date_sent: nil, origination_bank: nil, origination_bank_address: nil, payment_type: nil, payment_uuid: nil, recipient_account_number: nil, recipient_address: nil, recipient_name: nil, recipient_routing_number: nil, requested_amount: nil, status: nil, unique_tracking_code: nil, uuid: nil, wire_in_deadline: nil)
        @additional_notes = additional_notes
        @amount_sent = amount_sent
        @bank_name = bank_name
        @date_sent = date_sent
        @origination_bank = origination_bank
        @origination_bank_address = origination_bank_address
        @payment_type = payment_type
        @payment_uuid = payment_uuid
        @recipient_account_number = recipient_account_number
        @recipient_address = recipient_address
        @recipient_name = recipient_name
        @recipient_routing_number = recipient_routing_number
        @requested_amount = requested_amount
        @status = status
        @unique_tracking_code = unique_tracking_code
        @uuid = uuid
        @wire_in_deadline = wire_in_deadline
      end
    end
  end
end
