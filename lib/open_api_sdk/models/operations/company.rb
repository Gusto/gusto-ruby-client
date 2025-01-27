# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class Company < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The legal name of the company.
      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # Whether the company only supports contractors. Should be set to true if the company has no W-2 employees. If not passed, will default to false (i.e. the company will support both contractors and employees).
      field :contractor_only, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('contractor_only') } }
      # The employer identification number (EIN) of the company.
      field :ein, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ein') } }
      # The name of the company.
      field :trade_name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('trade_name') } }


      sig { params(name: ::String, contractor_only: T.nilable(T::Boolean), ein: T.nilable(::String), trade_name: T.nilable(::String)).void }
      def initialize(name: nil, contractor_only: nil, ein: nil, trade_name: nil)
        @name = name
        @contractor_only = contractor_only
        @ein = ein
        @trade_name = trade_name
      end
    end
  end
end
