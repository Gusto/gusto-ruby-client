# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PutV1CompaniesCompanyUuidTaxRequirementsStateRequestBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :requirement_sets, T.nilable(T::Array[::OpenApiSDK::Operations::RequirementSets]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('requirement_sets') } }


      sig { params(requirement_sets: T.nilable(T::Array[::OpenApiSDK::Operations::RequirementSets])).void }
      def initialize(requirement_sets: nil)
        @requirement_sets = requirement_sets
      end
    end
  end
end
