# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module GustoEmbedded
  extend T::Sig
  class Signatories
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(company_uuid: ::String, request_body: ::GustoEmbedded::Operations::PostV1CompanySignatoriesRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PostV1CompanySignatoriesResponse) }
    def create(company_uuid, request_body, x_gusto_api_version = nil)
      # create - Create a signatory
      # Create a company signatory with complete information.
      # A signatory can legally sign forms once the identity verification process is successful.
      # The signatory should be an officer, owner, general partner or LLC member manager, plan administrator, fiduciary, or an authorized representative who is designated to sign agreements on the company's behalf. An officer is the president, vice president, treasurer, chief accounting officer, etc. There can only be a single primary signatory in a company.
      # 
      # scope: `signatories:manage`
      request = ::GustoEmbedded::Operations::PostV1CompanySignatoriesRequest.new(
        
        company_uuid: company_uuid,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PostV1CompanySignatoriesRequest,
        base_url,
        '/v1/companies/{company_uuid}/signatories',
        request
      )
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

      res = ::GustoEmbedded::Operations::PostV1CompanySignatoriesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::Signatory)
          res.signatory = out
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


    sig { params(company_uuid: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1CompaniesCompanyUuidSignatoriesResponse) }
    def list(company_uuid, x_gusto_api_version = nil)
      # list - Get all company signatories
      # Returns company signatories. Currently we only support a single signatory per company.
      # 
      # scope: `signatories:read`
      request = ::GustoEmbedded::Operations::GetV1CompaniesCompanyUuidSignatoriesRequest.new(
        
        company_uuid: company_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1CompaniesCompanyUuidSignatoriesRequest,
        base_url,
        '/v1/companies/{company_uuid}/signatories',
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

      res = ::GustoEmbedded::Operations::GetV1CompaniesCompanyUuidSignatoriesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::GustoEmbedded::Shared::Signatory])
          res.signatory_list = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(company_uuid: ::String, request_body: ::GustoEmbedded::Operations::PostV1CompaniesCompanyUuidSignatoriesInviteRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PostV1CompaniesCompanyUuidSignatoriesInviteResponse) }
    def invite(company_uuid, request_body, x_gusto_api_version = nil)
      # invite - Invite a signatory
      # Create a signatory with minimal information. This signatory can be invited to provide more information through the `PUT /v1/companies/{company_uuid}/signatories/{signatory_uuid}` endpoint. This will start the identity verification process and allow the signatory to be verified to sign documents.
      request = ::GustoEmbedded::Operations::PostV1CompaniesCompanyUuidSignatoriesInviteRequest.new(
        
        company_uuid: company_uuid,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PostV1CompaniesCompanyUuidSignatoriesInviteRequest,
        base_url,
        '/v1/companies/{company_uuid}/signatories/invite',
        request
      )
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

      res = ::GustoEmbedded::Operations::PostV1CompaniesCompanyUuidSignatoriesInviteResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::Signatory)
          res.signatory = out
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


    sig { params(company_uuid: ::String, signatory_uuid: ::String, request_body: ::GustoEmbedded::Operations::PutV1CompaniesCompanyUuidSignatoriesSignatoryUuidRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PutV1CompaniesCompanyUuidSignatoriesSignatoryUuidResponse) }
    def update(company_uuid, signatory_uuid, request_body, x_gusto_api_version = nil)
      # update - Update a signatory
      # Update a signatory that has been either invited or created. If the signatory has been created with minimal information through the `POST /v1/companies/{company_uuid}/signatories/invite` endpoint, then the first update must contain all attributes specified in the request body in order to start the identity verification process.
      # 
      # scope: `signatories:write`
      request = ::GustoEmbedded::Operations::PutV1CompaniesCompanyUuidSignatoriesSignatoryUuidRequest.new(
        
        company_uuid: company_uuid,
        signatory_uuid: signatory_uuid,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PutV1CompaniesCompanyUuidSignatoriesSignatoryUuidRequest,
        base_url,
        '/v1/companies/{company_uuid}/signatories/{signatory_uuid}',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
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

      res = ::GustoEmbedded::Operations::PutV1CompaniesCompanyUuidSignatoriesSignatoryUuidResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::Signatory)
          res.signatory = out
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


    sig { params(company_uuid: ::String, signatory_uuid: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::DeleteV1CompaniesCompanyUuidSignatoriesSignatoryUuidResponse) }
    def delete(company_uuid, signatory_uuid, x_gusto_api_version = nil)
      # delete - Delete a signatory
      # Delete a company signatory.
      # 
      # scope: `signatories:manage`
      request = ::GustoEmbedded::Operations::DeleteV1CompaniesCompanyUuidSignatoriesSignatoryUuidRequest.new(
        
        company_uuid: company_uuid,
        signatory_uuid: signatory_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::DeleteV1CompaniesCompanyUuidSignatoriesSignatoryUuidRequest,
        base_url,
        '/v1/companies/{company_uuid}/signatories/{signatory_uuid}',
        request
      )
      headers = Utils.get_headers(request)
      headers['Accept'] = '*/*'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::GustoEmbedded::Operations::DeleteV1CompaniesCompanyUuidSignatoriesSignatoryUuidResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      elsif r.status == 404
      end

      res
    end
  end
end
