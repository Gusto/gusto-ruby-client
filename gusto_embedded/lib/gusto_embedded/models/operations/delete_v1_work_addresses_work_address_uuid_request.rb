# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class DeleteV1WorkAddressesWorkAddressUuidRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # The UUID of the work address
      field :work_address_uuid, ::String, { 'path_param': { 'field_name': 'work_address_uuid', 'style': 'simple', 'explode': false } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::GustoEmbedded::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(work_address_uuid: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).void }
      def initialize(work_address_uuid: nil, x_gusto_api_version: nil)
        @work_address_uuid = work_address_uuid
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
