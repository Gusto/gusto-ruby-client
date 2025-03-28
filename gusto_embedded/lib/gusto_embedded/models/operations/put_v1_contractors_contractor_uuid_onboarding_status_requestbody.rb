# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class PutV1ContractorsContractorUuidOnboardingStatusRequestBody < ::Crystalline::FieldAugmented
      extend T::Sig

      # The updated onboarding status for the contractor
      field :onboarding_status, ::GustoEmbedded::Operations::OnboardingStatus, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('onboarding_status'), 'decoder': Utils.enum_from_string(::GustoEmbedded::Operations::OnboardingStatus, false) } }


      sig { params(onboarding_status: ::GustoEmbedded::Operations::OnboardingStatus).void }
      def initialize(onboarding_status: nil)
        @onboarding_status = onboarding_status
      end
    end
  end
end
