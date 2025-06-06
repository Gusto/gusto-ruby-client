# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class PutV1LocationsLocationIdRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # The UUID of the location
      field :location_id, ::String, { 'path_param': { 'field_name': 'location_id', 'style': 'simple', 'explode': false } }

      field :request_body, ::GustoEmbedded::Operations::PutV1LocationsLocationIdRequestBody, { 'request': { 'media_type': 'application/json' } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::GustoEmbedded::Operations::HeaderXGustoAPIVersion), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(location_id: ::String, request_body: ::GustoEmbedded::Operations::PutV1LocationsLocationIdRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Operations::HeaderXGustoAPIVersion)).void }
      def initialize(location_id: nil, request_body: nil, x_gusto_api_version: nil)
        @location_id = location_id
        @request_body = request_body
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
