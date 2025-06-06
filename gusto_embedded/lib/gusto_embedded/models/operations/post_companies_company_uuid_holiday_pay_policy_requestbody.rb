# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class PostCompaniesCompanyUuidHolidayPayPolicyRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig

      # An object containing federal holiday objects, each containing a boolean selected property.
      field :federal_holidays, T.nilable(::GustoEmbedded::Operations::FederalHolidays), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('federal_holidays') } }


      sig { params(federal_holidays: T.nilable(::GustoEmbedded::Operations::FederalHolidays)).void }
      def initialize(federal_holidays: nil)
        @federal_holidays = federal_holidays
      end
    end
  end
end
