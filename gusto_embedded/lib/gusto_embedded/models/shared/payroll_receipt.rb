# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # Example response
    class PayrollReceipt < ::Crystalline::FieldAugmented
      extend T::Sig

      # A unique identifier of the company for the payroll.
      field :company_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('company_uuid') } }
      # The debit or funding date for the payroll
      field :debit_date, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('debit_date') } }
      # An array of employee compensations and withholdings for this payroll
      field :employee_compensations, T.nilable(T::Array[::GustoEmbedded::Shared::EmployeeCompensations]), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('employee_compensations') } }

      field :liability_of_licensee, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('liability_of_licensee') } }
      # Always the fixed string "ZenPayroll, Inc., dba Gusto is a licensed money transmitter. For more about Gusto’s licenses and your state-specific rights to request information, submit complaints, dispute errors, or cancel transactions, visit our license page."
      field :license, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('license') } }
      # URL for the license information for the licensed payroll processor. Always the fixed string "https://gusto.com/about/licenses"
      field :license_uri, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('license_uri') } }
      # The licensed payroll processor
      field :licensee, T.nilable(::GustoEmbedded::Shared::Licensee), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('licensee') } }
      # Always the fixed string "Payroll Recipients"
      field :name_of_recipient, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('name_of_recipient') } }
      # The name of the company by whom the payroll was paid
      field :name_of_sender, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('name_of_sender') } }
      # A unique identifier of the payroll receipt.
      field :payroll_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('payroll_uuid') } }
      # Always the fixed string "Payroll recipients include the employees listed below plus the tax agencies for the taxes listed below."
      field :recipient_notice, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('recipient_notice') } }

      field :right_to_refund, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('right_to_refund') } }
      # An array of totaled employer and employee taxes for the pay period.
      field :taxes, T.nilable(T::Array[::GustoEmbedded::Shared::PayrollReceiptTaxes]), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('taxes') } }
      # The subtotals for the payroll.
      field :totals, T.nilable(::GustoEmbedded::Shared::Totals), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('totals') } }


      sig { params(company_uuid: T.nilable(::String), debit_date: T.nilable(::String), employee_compensations: T.nilable(T::Array[::GustoEmbedded::Shared::EmployeeCompensations]), liability_of_licensee: T.nilable(::String), license: T.nilable(::String), license_uri: T.nilable(::String), licensee: T.nilable(::GustoEmbedded::Shared::Licensee), name_of_recipient: T.nilable(::String), name_of_sender: T.nilable(::String), payroll_uuid: T.nilable(::String), recipient_notice: T.nilable(::String), right_to_refund: T.nilable(::String), taxes: T.nilable(T::Array[::GustoEmbedded::Shared::PayrollReceiptTaxes]), totals: T.nilable(::GustoEmbedded::Shared::Totals)).void }
      def initialize(company_uuid: nil, debit_date: nil, employee_compensations: nil, liability_of_licensee: nil, license: nil, license_uri: nil, licensee: nil, name_of_recipient: nil, name_of_sender: nil, payroll_uuid: nil, recipient_notice: nil, right_to_refund: nil, taxes: nil, totals: nil)
        @company_uuid = company_uuid
        @debit_date = debit_date
        @employee_compensations = employee_compensations
        @liability_of_licensee = liability_of_licensee
        @license = license
        @license_uri = license_uri
        @licensee = licensee
        @name_of_recipient = name_of_recipient
        @name_of_sender = name_of_sender
        @payroll_uuid = payroll_uuid
        @recipient_notice = recipient_notice
        @right_to_refund = right_to_refund
        @taxes = taxes
        @totals = totals
      end
    end
  end
end
