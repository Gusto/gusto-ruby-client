# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class ExternalPayrollItems < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :benefits, T.nilable(T::Array[::OpenApiSDK::Shared::ExternalPayrollBenefits]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('benefits') } }

      field :earnings, T.nilable(T::Array[::OpenApiSDK::Shared::Earnings]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('earnings') } }

      field :employee_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('employee_uuid') } }

      field :taxes, T.nilable(T::Array[::OpenApiSDK::Shared::ExternalPayrollTaxes]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('taxes') } }


      sig { params(benefits: T.nilable(T::Array[::OpenApiSDK::Shared::ExternalPayrollBenefits]), earnings: T.nilable(T::Array[::OpenApiSDK::Shared::Earnings]), employee_uuid: T.nilable(::String), taxes: T.nilable(T::Array[::OpenApiSDK::Shared::ExternalPayrollTaxes])).void }
      def initialize(benefits: nil, earnings: nil, employee_uuid: nil, taxes: nil)
        @benefits = benefits
        @earnings = earnings
        @employee_uuid = employee_uuid
        @taxes = taxes
      end
    end
  end
end
