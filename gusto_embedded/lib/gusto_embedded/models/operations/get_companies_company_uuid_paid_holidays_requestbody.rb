# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class GetCompaniesCompanyUuidPaidHolidaysRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig

      # If a year is passed, paid holidays for that year will be returned. Otherwise, paid holidays for the next three years will be returned.
      field :year, T.nilable(::String), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('year') } }


      sig { params(year: T.nilable(::String)).void }
      def initialize(year: nil)
        @year = year
      end
    end
  end
end
