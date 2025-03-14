# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module GustoEmbedded
  extend T::Sig
  class GeneratedDocuments
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(document_type: ::GustoEmbedded::Shared::DocumentType, request_uuid: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1GeneratedDocumentsDocumentTypeRequestUuidResponse) }
    def get(document_type, request_uuid, x_gusto_api_version = nil)
      # get - Get a generated document
      # Get a document given the request_uuid. The response will include the generation request's status and urls to the document. A list of urls is returned as certain document types require several urls.
      # 
      # scope: `generated_documents:read`
      request = ::GustoEmbedded::Operations::GetV1GeneratedDocumentsDocumentTypeRequestUuidRequest.new(
        
        document_type: document_type,
        request_uuid: request_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1GeneratedDocumentsDocumentTypeRequestUuidRequest,
        base_url,
        '/v1/generated_documents/{document_type}/{request_uuid}',
        request
      )
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::GustoEmbedded::Operations::GetV1GeneratedDocumentsDocumentTypeRequestUuidResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::GeneratedDocument)
          res.generated_document = out
        end
      elsif r.status == 404
      end

      res
    end
  end
end
