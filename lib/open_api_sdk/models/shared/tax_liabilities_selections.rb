# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # Example response
    class TaxLiabilitiesSelections < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of last unpaid external payroll.
      field :last_unpaid_external_payroll_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('last_unpaid_external_payroll_uuid') } }
      # Possible tax liabilities selections.
      field :possible_liabilities, T.nilable(T::Array[::OpenApiSDK::Shared::PossibleLiabilities]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('possible_liabilities') } }
      # The ID of the tax.
      field :tax_id, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tax_id') } }
      # The name of the tax.
      field :tax_name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tax_name') } }


      sig { params(last_unpaid_external_payroll_uuid: T.nilable(::String), possible_liabilities: T.nilable(T::Array[::OpenApiSDK::Shared::PossibleLiabilities]), tax_id: T.nilable(::Integer), tax_name: T.nilable(::String)).void }
      def initialize(last_unpaid_external_payroll_uuid: nil, possible_liabilities: nil, tax_id: nil, tax_name: nil)
        @last_unpaid_external_payroll_uuid = last_unpaid_external_payroll_uuid
        @possible_liabilities = possible_liabilities
        @tax_id = tax_id
        @tax_name = tax_name
      end
    end
  end
end
