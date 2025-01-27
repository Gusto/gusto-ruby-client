# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class TaxRequirements
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(company_uuid: ::String, state: ::String, scheduling: T.nilable(T::Boolean), x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidTaxRequirementsStateResponse) }
    def get_state_requirements(company_uuid, state, scheduling = nil, x_gusto_api_version = nil)
      # get_state_requirements - Get State Tax Requirements
      # Get all tax requirements for a given state.
      # 
      # ### Metadata Examples
      # 
      # ```json select
      # {
      #   "type": "select",
      #   "options": [
      #     { "label": "Semiweekly",  value: "Semi-weekly" },
      #     { "label": "Monthly",  value: "Monthly" },
      #     { "label": "Quarterly",  value: "Quarterly" },
      #   ]
      # }
      # ```
      # ```json radio
      # {
      #   "type": "radio",
      #   "options": [
      #     { "label": "No, we cannot reimburse",  value: false, short_label: "Not Reimbursable" },
      #     { "label": "Yes, we can reimburse",  value: true, short_label: "Reimbursable" },
      #   ]
      # }
      # ```
      # ```json account_number
      # {
      #   "type": "account_number",
      #   "mask": "######-##',
      #   "prefix": null
      # }
      # ```
      # ```json tax_rate
      # {
      #   "type": "tax_rate",
      #   "validation": {
      #     "type": "min_max",
      #     "min": "0.0004",
      #     "max": "0.081"
      #   }
      # }
      # ```
      # 
      # scope: `company_tax_requirements:read`
      # 
      request = ::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidTaxRequirementsStateRequest.new(
        
        company_uuid: company_uuid,
        state: state,
        scheduling: scheduling,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidTaxRequirementsStateRequest,
        base_url,
        '/v1/companies/{company_uuid}/tax_requirements/{state}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidTaxRequirementsStateRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidTaxRequirementsStateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::TaxRequirementsState)
          res.tax_requirements_state = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(company_uuid: ::String, state: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader), request_body: T.nilable(::OpenApiSDK::Operations::PutV1CompaniesCompanyUuidTaxRequirementsStateRequestBody)).returns(::OpenApiSDK::Operations::PutV1CompaniesCompanyUuidTaxRequirementsStateResponse) }
    def update_state(company_uuid, state, x_gusto_api_version = nil, request_body = nil)
      # update_state - Update State Tax Requirements
      # Update State Tax Requirements
      # 
      # scope: `company_tax_requirements:write`
      request = ::OpenApiSDK::Operations::PutV1CompaniesCompanyUuidTaxRequirementsStateRequest.new(
        
        company_uuid: company_uuid,
        state: state,
        x_gusto_api_version: x_gusto_api_version,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::PutV1CompaniesCompanyUuidTaxRequirementsStateRequest,
        base_url,
        '/v1/companies/{company_uuid}/tax_requirements/{state}',
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

      res = ::OpenApiSDK::Operations::PutV1CompaniesCompanyUuidTaxRequirementsStateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 404
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::UnprocessableEntityErrorObject)
          res.unprocessable_entity_error_object = out
        end
      end

      res
    end


    sig { params(company_uuid: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidTaxRequirementsResponse) }
    def get_all(company_uuid, x_gusto_api_version = nil)
      # get_all - Get All Tax Requirement States
      # Returns objects describing the states that have tax requirements for the company
      # 
      # scope: `company_tax_requirements:read`
      request = ::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidTaxRequirementsRequest.new(
        
        company_uuid: company_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidTaxRequirementsRequest,
        base_url,
        '/v1/companies/{company_uuid}/tax_requirements',
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

      res = ::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidTaxRequirementsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidTaxRequirementsResponseBody])
          res.response_bodies = out
        end
      elsif r.status == 404
      end

      res
    end
  end
end
