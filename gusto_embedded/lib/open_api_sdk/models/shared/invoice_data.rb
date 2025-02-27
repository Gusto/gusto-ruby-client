# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # Representation of a partners invoice data
    class InvoiceData < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The list of companies that are active within the invoice period
      field :active_companies, T.nilable(T::Array[::OpenApiSDK::Shared::ActiveCompanies]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('active_companies') } }


      sig { params(active_companies: T.nilable(T::Array[::OpenApiSDK::Shared::ActiveCompanies])).void }
      def initialize(active_companies: nil)
        @active_companies = active_companies
      end
    end
  end
end
