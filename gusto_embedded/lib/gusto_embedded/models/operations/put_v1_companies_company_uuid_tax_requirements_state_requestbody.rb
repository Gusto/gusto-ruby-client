# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class PutV1CompaniesCompanyUuidTaxRequirementsStateRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig


      field :requirement_sets, T.nilable(T::Array[::GustoEmbedded::Operations::RequirementSets]), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('requirement_sets') } }


      sig { params(requirement_sets: T.nilable(T::Array[::GustoEmbedded::Operations::RequirementSets])).void }
      def initialize(requirement_sets: nil)
        @requirement_sets = requirement_sets
      end
    end
  end
end
