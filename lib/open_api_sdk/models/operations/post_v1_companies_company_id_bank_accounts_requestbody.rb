# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PostV1CompaniesCompanyIdBankAccountsRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The bank account number
      field :account_number, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('account_number') } }
      # The bank account type
      field :account_type, T.nilable(::OpenApiSDK::Operations::AccountType), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('account_type'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Operations::AccountType, true) } }
      # The bank routing number
      field :routing_number, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('routing_number') } }


      sig { params(account_number: T.nilable(::String), account_type: T.nilable(::OpenApiSDK::Operations::AccountType), routing_number: T.nilable(::String)).void }
      def initialize(account_number: nil, account_type: nil, routing_number: nil)
        @account_number = account_number
        @account_type = account_type
        @routing_number = routing_number
      end
    end
  end
end
