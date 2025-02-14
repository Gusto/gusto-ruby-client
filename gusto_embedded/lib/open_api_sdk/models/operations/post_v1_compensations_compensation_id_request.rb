# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class PostV1CompensationsCompensationIdRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the job
      field :job_id, ::String, { 'path_param': { 'field_name': 'job_id', 'style': 'simple', 'explode': false } }

      field :request_body, ::OpenApiSDK::Operations::PostV1CompensationsCompensationIdRequestBody, { 'request': { 'media_type': 'application/json' } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::OpenApiSDK::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(job_id: ::String, request_body: ::OpenApiSDK::Operations::PostV1CompensationsCompensationIdRequestBody, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).void }
      def initialize(job_id: nil, request_body: nil, x_gusto_api_version: nil)
        @job_id = job_id
        @request_body = request_body
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
