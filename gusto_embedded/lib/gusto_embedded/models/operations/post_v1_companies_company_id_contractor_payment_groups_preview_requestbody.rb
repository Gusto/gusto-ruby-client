# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class PostV1CompaniesCompanyIdContractorPaymentGroupsPreviewRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig

      # The payment check date
      field :check_date, ::Date, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('check_date'), 'decoder': Utils.date_from_iso_format(false) } }

      field :contractor_payments, T::Array[::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsPreviewContractorPayments], { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('contractor_payments') } }
      # Optional token used to make contractor payment group creation idempotent.  If provided, string must be unique for each group you intend to create.
      field :creation_token, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('creation_token') } }


      sig { params(check_date: ::Date, contractor_payments: T::Array[::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsPreviewContractorPayments], creation_token: T.nilable(::String)).void }
      def initialize(check_date: nil, contractor_payments: nil, creation_token: nil)
        @check_date = check_date
        @contractor_payments = contractor_payments
        @creation_token = creation_token
      end
    end
  end
end
