# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetV1BenefitsBenefitsIdRequirementsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The benefit type in Gusto.
      field :benefit_id, ::String, { 'path_param': { 'field_name': 'benefit_id', 'style': 'simple', 'explode': false } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::OpenApiSDK::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(benefit_id: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).void }
      def initialize(benefit_id: nil, x_gusto_api_version: nil)
        @benefit_id = benefit_id
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
