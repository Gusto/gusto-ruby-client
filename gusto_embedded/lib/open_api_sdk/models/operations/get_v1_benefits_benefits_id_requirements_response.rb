# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetV1BenefitsBenefitsIdRequirementsResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Benefit type requirements response
      field :benefit_type_requirements, T.nilable(::OpenApiSDK::Shared::BenefitTypeRequirements)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, benefit_type_requirements: T.nilable(::OpenApiSDK::Shared::BenefitTypeRequirements)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, benefit_type_requirements: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @benefit_type_requirements = benefit_type_requirements
      end
    end
  end
end
