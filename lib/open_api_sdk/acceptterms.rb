# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class AcceptTerms
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(company_uuid: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader), request_body: T.nilable(::OpenApiSDK::Operations::PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceRequestBody)).returns(::OpenApiSDK::Operations::PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceResponse) }
    def create(company_uuid, x_gusto_api_version = nil, request_body = nil)
      # create - Accept terms of service for a company user
      # Accept the Gusto Embedded Payroll's [Terms of Service](https://flows.gusto.com/terms).
      # The user must have a role in the company in order to accept the Terms of Service.
      # 
      # scope: `terms_of_services:write`
      request = ::OpenApiSDK::Operations::PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceRequest.new(
        
        company_uuid: company_uuid,
        x_gusto_api_version: x_gusto_api_version,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceRequest,
        base_url,
        '/v1/partner_managed_companies/{company_uuid}/accept_terms_of_service',
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

      res = ::OpenApiSDK::Operations::PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceResponseBody)
          res.object = out
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
  end
end
