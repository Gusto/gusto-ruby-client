# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PutCompaniesCompanyUuidHolidayPayPolicyRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The current version of the object. See the [versioning guide](https://docs.gusto.com/embedded-payroll/docs/idempotency) for information on how to use this field.
      field :version, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('version') } }
      # An object containing federal holiday objects, each containing a boolean selected property.
      field :federal_holidays, T.nilable(::OpenApiSDK::Operations::PutCompaniesCompanyUuidHolidayPayPolicyFederalHolidays), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('federal_holidays') } }


      sig { params(version: ::String, federal_holidays: T.nilable(::OpenApiSDK::Operations::PutCompaniesCompanyUuidHolidayPayPolicyFederalHolidays)).void }
      def initialize(version: nil, federal_holidays: nil)
        @version = version
        @federal_holidays = federal_holidays
      end
    end
  end
end
