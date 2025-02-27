# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # Configuration for an employee onboarding documents during onboarding
    class OnboardingDocumentsConfig < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Whether to include Form I-9 for an employee during onboarding
      field :i9_document, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('i9_document') } }
      # The UUID of the onboarding documents config
      field :uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('uuid') } }


      sig { params(i9_document: T.nilable(T::Boolean), uuid: T.nilable(::String)).void }
      def initialize(i9_document: nil, uuid: nil)
        @i9_document = i9_document
        @uuid = uuid
      end
    end
  end
end
