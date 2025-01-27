# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Signatories
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(company_uuid: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader), request_body: T.nilable(::OpenApiSDK::Operations::PostV1CompanySignatoriesRequestBody)).returns(::OpenApiSDK::Operations::PostV1CompanySignatoriesResponse) }
    def create(company_uuid, x_gusto_api_version = nil, request_body = nil)
      # create - Create a signatory
      # Create a company signatory with complete information.
      # A signatory can legally sign forms once the identity verification process is successful.
      # The signatory should be an officer, owner, general partner or LLC member manager, plan administrator, fiduciary, or an authorized representative who is designated to sign agreements on the company's behalf. An officer is the president, vice president, treasurer, chief accounting officer, etc. There can only be a single primary signatory in a company.
      # 
      # scope: `signatories:manage`
      request = ::OpenApiSDK::Operations::PostV1CompanySignatoriesRequest.new(
        
        company_uuid: company_uuid,
        x_gusto_api_version: x_gusto_api_version,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::PostV1CompanySignatoriesRequest,
        base_url,
        '/v1/companies/{company_uuid}/signatories',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::PostV1CompanySignatoriesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Signatory)
          res.signatory = out
        end
      elsif r.status == 404
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::UnprocessableEntityErrorObject)
          res.unprocessable_entity_error_object = out
        end
      end

      res
    end


    sig { params(company_uuid: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidSignatoriesResponse) }
    def get(company_uuid, x_gusto_api_version = nil)
      # get - Get all company signatories
      # Returns company signatories. Currently we only support a single signatory per company.
      # 
      # scope: `signatories:read`
      request = ::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidSignatoriesRequest.new(
        
        company_uuid: company_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidSignatoriesRequest,
        base_url,
        '/v1/companies/{company_uuid}/signatories',
        request
      )
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidSignatoriesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Shared::Signatory])
          res.signatory_list = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(company_uuid: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader), request_body: T.nilable(::OpenApiSDK::Operations::PostV1CompaniesCompanyUuidSignatoriesInviteRequestBody)).returns(::OpenApiSDK::Operations::PostV1CompaniesCompanyUuidSignatoriesInviteResponse) }
    def invite(company_uuid, x_gusto_api_version = nil, request_body = nil)
      # invite - Invite a signatory
      # Create a signatory with minimal information. This signatory can be invited to provide more information through the `PUT /v1/companies/{company_uuid}/signatories/{signatory_uuid}` endpoint. This will start the identity verification process and allow the signatory to be verified to sign documents.
      request = ::OpenApiSDK::Operations::PostV1CompaniesCompanyUuidSignatoriesInviteRequest.new(
        
        company_uuid: company_uuid,
        x_gusto_api_version: x_gusto_api_version,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::PostV1CompaniesCompanyUuidSignatoriesInviteRequest,
        base_url,
        '/v1/companies/{company_uuid}/signatories/invite',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::PostV1CompaniesCompanyUuidSignatoriesInviteResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Signatory)
          res.signatory = out
        end
      elsif r.status == 404
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::UnprocessableEntityErrorObject)
          res.unprocessable_entity_error_object = out
        end
      end

      res
    end


    sig { params(company_uuid: ::String, signatory_uuid: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader), request_body: T.nilable(::OpenApiSDK::Operations::PutV1CompaniesCompanyUuidSignatoriesSignatoryUuidRequestBody)).returns(::OpenApiSDK::Operations::PutV1CompaniesCompanyUuidSignatoriesSignatoryUuidResponse) }
    def update(company_uuid, signatory_uuid, x_gusto_api_version = nil, request_body = nil)
      # update - Update a signatory
      # Update a signatory that has been either invited or created. If the signatory has been created with minimal information through the `POST /v1/companies/{company_uuid}/signatories/invite` endpoint, then the first update must contain all attributes specified in the request body in order to start the identity verification process.
      # 
      # scope: `signatories:write`
      request = ::OpenApiSDK::Operations::PutV1CompaniesCompanyUuidSignatoriesSignatoryUuidRequest.new(
        
        company_uuid: company_uuid,
        signatory_uuid: signatory_uuid,
        x_gusto_api_version: x_gusto_api_version,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::PutV1CompaniesCompanyUuidSignatoriesSignatoryUuidRequest,
        base_url,
        '/v1/companies/{company_uuid}/signatories/{signatory_uuid}',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::PutV1CompaniesCompanyUuidSignatoriesSignatoryUuidResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Signatory)
          res.signatory = out
        end
      elsif r.status == 404
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::UnprocessableEntityErrorObject)
          res.unprocessable_entity_error_object = out
        end
      end

      res
    end


    sig { params(company_uuid: ::String, signatory_uuid: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::DeleteV1CompaniesCompanyUuidSignatoriesSignatoryUuidResponse) }
    def delete(company_uuid, signatory_uuid, x_gusto_api_version = nil)
      # delete - Delete a signatory
      # Delete a company signatory.
      # 
      # scope: `signatories:manage`
      request = ::OpenApiSDK::Operations::DeleteV1CompaniesCompanyUuidSignatoriesSignatoryUuidRequest.new(
        
        company_uuid: company_uuid,
        signatory_uuid: signatory_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::DeleteV1CompaniesCompanyUuidSignatoriesSignatoryUuidRequest,
        base_url,
        '/v1/companies/{company_uuid}/signatories/{signatory_uuid}',
        request
      )
      headers = Utils.get_headers(request)
      headers['Accept'] = '*/*'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::DeleteV1CompaniesCompanyUuidSignatoriesSignatoryUuidResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      elsif r.status == 404
      end

      res
    end
  end
end
