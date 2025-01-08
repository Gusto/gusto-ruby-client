# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class RefreshAccessTokenRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :request_body, T.nilable(::OpenApiSDK::Operations::RefreshAccessTokenRequestBody), { 'request': { 'media_type': 'application/json' } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::OpenApiSDK::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(request_body: T.nilable(::OpenApiSDK::Operations::RefreshAccessTokenRequestBody), x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).void }
      def initialize(request_body: nil, x_gusto_api_version: nil)
        @request_body = request_body
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
