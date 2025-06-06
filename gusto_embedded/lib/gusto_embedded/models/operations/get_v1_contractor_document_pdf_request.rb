# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module GustoEmbedded
  module Operations
  

    class GetV1ContractorDocumentPdfRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # The ID or UUID of the document
      field :document_uuid, ::String, { 'path_param': { 'field_name': 'document_uuid', 'style': 'simple', 'explode': false } }
      # Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.
      field :x_gusto_api_version, T.nilable(::GustoEmbedded::Shared::VersionHeader), { 'header': { 'field_name': 'X-Gusto-API-Version', 'style': 'simple', 'explode': false } }


      sig { params(document_uuid: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).void }
      def initialize(document_uuid: nil, x_gusto_api_version: nil)
        @document_uuid = document_uuid
        @x_gusto_api_version = x_gusto_api_version
      end
    end
  end
end
