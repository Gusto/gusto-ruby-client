# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module GustoEmbedded
  extend T::Sig
  class ContractorForms
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(contractor_uuid: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1ContractorFormsResponse) }
    def list(contractor_uuid, x_gusto_api_version = nil)
      # list - Get all contractor forms
      # Get a list of all contractor's forms
      # 
      # scope: `contractor_forms:read`
      request = ::GustoEmbedded::Operations::GetV1ContractorFormsRequest.new(
        
        contractor_uuid: contractor_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1ContractorFormsRequest,
        base_url,
        '/v1/contractors/{contractor_uuid}/forms',
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

      res = ::GustoEmbedded::Operations::GetV1ContractorFormsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::GustoEmbedded::Shared::Form1099])
          res.form_1099s = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(contractor_uuid: ::String, form_id: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1ContractorFormResponse) }
    def get(contractor_uuid, form_id, x_gusto_api_version = nil)
      # get - Get a contractor form
      # Get a contractor form
      # 
      # scope: `contractor_forms:read`
      request = ::GustoEmbedded::Operations::GetV1ContractorFormRequest.new(
        
        contractor_uuid: contractor_uuid,
        form_id: form_id,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1ContractorFormRequest,
        base_url,
        '/v1/contractors/{contractor_uuid}/forms/{form_id}',
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

      res = ::GustoEmbedded::Operations::GetV1ContractorFormResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::Form1099)
          res.form_1099 = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(contractor_uuid: ::String, form_id: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1ContractorFormPdfResponse) }
    def get_pdf(contractor_uuid, form_id, x_gusto_api_version = nil)
      # get_pdf - Get the contractor form pdf
      # Get the link to the form PDF
      # 
      # scope: `contractor_forms:read`
      request = ::GustoEmbedded::Operations::GetV1ContractorFormPdfRequest.new(
        
        contractor_uuid: contractor_uuid,
        form_id: form_id,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1ContractorFormPdfRequest,
        base_url,
        '/v1/contractors/{contractor_uuid}/forms/{form_id}/pdf',
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

      res = ::GustoEmbedded::Operations::GetV1ContractorFormPdfResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::FormPdf)
          res.form_pdf = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(request_body: ::GustoEmbedded::Operations::PostV1SandboxGenerate1099RequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PostV1SandboxGenerate1099Response) }
    def generate1099(request_body, x_gusto_api_version = nil)
      # generate1099 - Generate a 1099 form [DEMO]
      # > 🚧 Demo action
      # >
      # > This action is only available in the Demo environment
      # 
      # Generates a 1099 document for testing purposes.
      # 
      # scope: `contractors:write`
      request = ::GustoEmbedded::Operations::PostV1SandboxGenerate1099Request.new(
        
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/sandbox/generate_1099"
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::GustoEmbedded::Operations::PostV1SandboxGenerate1099Response.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::Form1099)
          res.form_1099 = out
        end
      elsif r.status == 404
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::UnprocessableEntityErrorObject)
          res.unprocessable_entity_error_object = out
        end
      end

      res
    end
  end
end
