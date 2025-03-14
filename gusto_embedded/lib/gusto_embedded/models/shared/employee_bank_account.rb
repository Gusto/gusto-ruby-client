# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # Example response
    class EmployeeBankAccount < ::Crystalline::FieldAugmented
      extend T::Sig

      # UUID of the bank account
      field :uuid, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('uuid') } }
      # Bank account type
      field :account_type, T.nilable(::GustoEmbedded::Shared::EmployeeBankAccountAccountType), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('account_type'), 'decoder': Utils.enum_from_string(::GustoEmbedded::Shared::EmployeeBankAccountAccountType, true) } }
      # UUID of the employee
      field :employee_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('employee_uuid') } }
      # Masked bank account number
      field :hidden_account_number, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('hidden_account_number') } }
      # Name for the bank account
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('name') } }
      # The bank account's routing number
      field :routing_number, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('routing_number') } }


      sig { params(uuid: ::String, account_type: T.nilable(::GustoEmbedded::Shared::EmployeeBankAccountAccountType), employee_uuid: T.nilable(::String), hidden_account_number: T.nilable(::String), name: T.nilable(::String), routing_number: T.nilable(::String)).void }
      def initialize(uuid: nil, account_type: nil, employee_uuid: nil, hidden_account_number: nil, name: nil, routing_number: nil)
        @uuid = uuid
        @account_type = account_type
        @employee_uuid = employee_uuid
        @hidden_account_number = hidden_account_number
        @name = name
        @routing_number = routing_number
      end
    end
  end
end
