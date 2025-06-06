# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Shared
  
    # The representation of a company's onboarding status
    class CompanyOnboardingStatus < ::Crystalline::FieldAugmented
      extend T::Sig

      # the UUID of the company
      field :uuid, ::String, { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('uuid') } }
      # a boolean flag for the company's onboarding status
      field :onboarding_completed, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('onboarding_completed') } }
      # a list of company onboarding steps
      field :onboarding_steps, T.nilable(T::Array[::GustoEmbedded::Shared::OnboardingStep]), { 'format_json': { 'letter_case': ::GustoEmbedded::Utils.field_name('onboarding_steps') } }


      sig { params(uuid: ::String, onboarding_completed: T.nilable(T::Boolean), onboarding_steps: T.nilable(T::Array[::GustoEmbedded::Shared::OnboardingStep])).void }
      def initialize(uuid: nil, onboarding_completed: nil, onboarding_steps: nil)
        @uuid = uuid
        @onboarding_completed = onboarding_completed
        @onboarding_steps = onboarding_steps
      end
    end
  end
end
