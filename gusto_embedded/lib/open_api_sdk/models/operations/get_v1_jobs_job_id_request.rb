# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetV1JobsJobIdRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the job
      field :job_id, ::String, { 'path_param': { 'field_name': 'job_id', 'style': 'simple', 'explode': false } }
      # Available options:
      # - all_compensations: Include all effective dated compensations for the job instead of only the current compensation
      field :include, T.nilable(::OpenApiSDK::Operations::GetV1JobsJobIdQueryParamInclude), { 'query_param': { 'field_name': 'include', 'style': 'form', 'explode': true } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::OpenApiSDK::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(job_id: ::String, include: T.nilable(::OpenApiSDK::Operations::GetV1JobsJobIdQueryParamInclude), x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).void }
      def initialize(job_id: nil, include: nil, x_gusto_api_version: nil)
        @job_id = job_id
        @include = include
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
