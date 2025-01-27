# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetV1ContractorsContractorUuidOnboardingStatusResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Example response.
      field :contractor_onboarding_status, T.nilable(::OpenApiSDK::Shared::ContractorOnboardingStatus)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, contractor_onboarding_status: T.nilable(::OpenApiSDK::Shared::ContractorOnboardingStatus)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, contractor_onboarding_status: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @contractor_onboarding_status = contractor_onboarding_status
      end
    end
  end
end
