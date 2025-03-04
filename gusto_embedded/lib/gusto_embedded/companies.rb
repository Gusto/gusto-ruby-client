# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module GustoEmbedded
  extend T::Sig
  class Companies
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(security: ::GustoEmbedded::Operations::PostV1PartnerManagedCompaniesSecurity, request_body: ::GustoEmbedded::Operations::PostV1PartnerManagedCompaniesRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PostV1PartnerManagedCompaniesResponse) }
    def create_partner_managed(security, request_body, x_gusto_api_version = nil)
      # create_partner_managed - Create a partner managed company
      # Create a partner managed company. When you successfully call the API, it does the following:
      # * Creates a new company in Gusto
      # * Creates a new user using the provided email if the user does not already exist.
      # * Makes the user the primary payroll administrator of the new company.
      # 
      # In response, you will receive oauth access tokens for the created company.
      # 
      # IMPORTANT: the returned access and refresh tokens are reserved for this company only. They cannot be used to access other companies AND previously granted tokens cannot be used to access this company.
      # 
      # > 📘 System Access Authentication
      # >
      # > this endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)
      request = ::GustoEmbedded::Operations::PostV1PartnerManagedCompaniesRequest.new(
        
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/partner_managed_companies"
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
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

      res = ::GustoEmbedded::Operations::PostV1PartnerManagedCompaniesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Operations::PostV1PartnerManagedCompaniesResponseBody)
          res.object = out
        end
      elsif r.status == 401
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::UnprocessableEntityErrorObject)
          res.unprocessable_entity_error_object = out
        end
      end

      res
    end


    sig { params(company_id: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1CompaniesResponse) }
    def get(company_id, x_gusto_api_version = nil)
      # get - Get a company
      # Get a company.         
      # The employees:read scope is required to return home_address and non-work locations.         
      # The company_admin:read scope is required to return primary_payroll_admin.         
      # The signatories:read scope is required to return primary_signatory.         
      # 
      # scope: `companies:read`
      request = ::GustoEmbedded::Operations::GetV1CompaniesRequest.new(
        
        company_id: company_id,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1CompaniesRequest,
        base_url,
        '/v1/companies/{company_id}',
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

      res = ::GustoEmbedded::Operations::GetV1CompaniesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::Company)
          res.company = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(company_id: ::String, request_body: ::GustoEmbedded::Operations::PutV1CompaniesRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PutV1CompaniesResponse) }
    def update(company_id, request_body, x_gusto_api_version = nil)
      # update - Update a company
      # Update a company.
      # 
      # scope: `companies:write`
      request = ::GustoEmbedded::Operations::PutV1CompaniesRequest.new(
        
        company_id: company_id,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PutV1CompaniesRequest,
        base_url,
        '/v1/companies/{company_id}',
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

      res = ::GustoEmbedded::Operations::PutV1CompaniesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::Company)
          res.company = out
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


    sig { params(company_uuid: ::String, request_body: ::GustoEmbedded::Operations::PutV1PartnerManagedCompaniesCompanyUuidMigrateRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PutV1PartnerManagedCompaniesCompanyUuidMigrateResponse) }
    def migrate(company_uuid, request_body, x_gusto_api_version = nil)
      # migrate - Migrate company to embedded payroll
      # Migrate an existing Gusto customer to your embedded payroll product.
      # 
      # To use this endpoint, the customer will need to connect their Gusto account to your application using [OAuth2](https://docs.gusto.com/embedded-payroll/docs/oauth2) then view and [accept the Embedded Payroll Terms of Service](https://docs.gusto.com/embedded-payroll/reference/post-partner-managed-companies-company_uuid-accept_terms_of_service).
      # 
      # scope: `partner_managed_companies:write`
      request = ::GustoEmbedded::Operations::PutV1PartnerManagedCompaniesCompanyUuidMigrateRequest.new(
        
        company_uuid: company_uuid,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PutV1PartnerManagedCompaniesCompanyUuidMigrateRequest,
        base_url,
        '/v1/partner_managed_companies/{company_uuid}/migrate',
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

      res = ::GustoEmbedded::Operations::PutV1PartnerManagedCompaniesCompanyUuidMigrateResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Operations::PutV1PartnerManagedCompaniesCompanyUuidMigrateResponseBody)
          res.object = out
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


    sig { params(company_uuid: ::String, request_body: ::GustoEmbedded::Operations::PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceResponse) }
    def accept_terms_of_service(company_uuid, request_body, x_gusto_api_version = nil)
      # accept_terms_of_service - Accept terms of service for a company user
      # Accept the Gusto Embedded Payroll's [Terms of Service](https://flows.gusto.com/terms).
      # The user must have a role in the company in order to accept the Terms of Service.
      # 
      # scope: `terms_of_services:write`
      request = ::GustoEmbedded::Operations::PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceRequest.new(
        
        company_uuid: company_uuid,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceRequest,
        base_url,
        '/v1/partner_managed_companies/{company_uuid}/accept_terms_of_service',
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

      res = ::GustoEmbedded::Operations::PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Operations::PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceResponseBody)
          res.object = out
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


    sig { params(company_uuid: ::String, request_body: ::GustoEmbedded::Operations::PostPartnerManagedCompaniesCompanyUuidRetrieveTermsOfServiceRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PostPartnerManagedCompaniesCompanyUuidRetrieveTermsOfServiceResponse) }
    def retrieve_terms_of_service(company_uuid, request_body, x_gusto_api_version = nil)
      # retrieve_terms_of_service - Retrieve terms of service status for a company user
      # Retrieve the user acceptance status of the Gusto Embedded Payroll's [Terms of Service](https://flows.gusto.com/terms).
      # 
      # scope: `terms_of_services:read`
      request = ::GustoEmbedded::Operations::PostPartnerManagedCompaniesCompanyUuidRetrieveTermsOfServiceRequest.new(
        
        company_uuid: company_uuid,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PostPartnerManagedCompaniesCompanyUuidRetrieveTermsOfServiceRequest,
        base_url,
        '/v1/partner_managed_companies/{company_uuid}/retrieve_terms_of_service',
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

      res = ::GustoEmbedded::Operations::PostPartnerManagedCompaniesCompanyUuidRetrieveTermsOfServiceResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Operations::PostPartnerManagedCompaniesCompanyUuidRetrieveTermsOfServiceResponseBody)
          res.object = out
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


    sig { params(company_id: ::String, request_body: ::GustoEmbedded::Operations::PostV1CompaniesCompanyIdAdminsRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PostV1CompaniesCompanyIdAdminsResponse) }
    def create_admin(company_id, request_body, x_gusto_api_version = nil)
      # create_admin - Create an admin for the company
      # Creates a new admin for a company.
      # If the email matches an existing user, this will create an admin account for the current user. Otherwise, this will create a new user.
      # 
      # scope: `company_admin:write`
      request = ::GustoEmbedded::Operations::PostV1CompaniesCompanyIdAdminsRequest.new(
        
        company_id: company_id,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PostV1CompaniesCompanyIdAdminsRequest,
        base_url,
        '/v1/companies/{company_id}/admins',
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

      res = ::GustoEmbedded::Operations::PostV1CompaniesCompanyIdAdminsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::Admin)
          res.admin = out
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


    sig { params(company_id: ::String, page: T.nilable(::Integer), per: T.nilable(::Integer), x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdAdminsResponse) }
    def list_admins(company_id, page = nil, per = nil, x_gusto_api_version = nil)
      # list_admins - Get all the admins at a company
      # Returns a list of all the admins at a company
      # 
      # scope: `company_admin:read`
      request = ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdAdminsRequest.new(
        
        company_id: company_id,
        page: page,
        per: per,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdAdminsRequest,
        base_url,
        '/v1/companies/{company_id}/admins',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdAdminsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdAdminsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::GustoEmbedded::Shared::Admin])
          res.admin_list = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(company_uuid: ::String, additional_steps: T.nilable(::String), x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1CompanyOnboardingStatusResponse) }
    def get_onboarding_status(company_uuid, additional_steps = nil, x_gusto_api_version = nil)
      # get_onboarding_status - Get the company's onboarding status
      # Get company's onboarding status.
      # The data returned helps inform the required onboarding steps and respective completion status.
      # 
      # scope: `company_onboarding_status:read`
      request = ::GustoEmbedded::Operations::GetV1CompanyOnboardingStatusRequest.new(
        
        company_uuid: company_uuid,
        additional_steps: additional_steps,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1CompanyOnboardingStatusRequest,
        base_url,
        '/v1/companies/{company_uuid}/onboarding_status',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::GustoEmbedded::Operations::GetV1CompanyOnboardingStatusRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::GustoEmbedded::Operations::GetV1CompanyOnboardingStatusResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::CompanyOnboardingStatus)
          res.company_onboarding_status = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(company_uuid: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1CompanyFinishOnboardingResponse) }
    def finish_onboarding(company_uuid, x_gusto_api_version = nil)
      # finish_onboarding - Finish company onboarding
      # Finalize a given company's onboarding process.
      # 
      # ### Approve a company in demo
      # After a company is finished onboarding, Gusto requires an additional step to review and approve that company. The company onboarding status is `"onboarding_completed": false`, until the API call is made to finish company onboarding.
      # In production environments, this step is required for risk-analysis purposes.
      # 
      # We provide the endpoint `PUT '/v1/companies/{company_uuid}/approve'` to facilitate company approvals in the demo environment.
      # 
      # ```shell
      # PUT '/v1/companies/89771af8-b964-472e-8064-554dfbcb56d9/approve'
      # 
      # # Response: Company object, with company_status: 'Approved'
      # ```
      # 
      # scope: `companies:write`
      request = ::GustoEmbedded::Operations::GetV1CompanyFinishOnboardingRequest.new(
        
        company_uuid: company_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1CompanyFinishOnboardingRequest,
        base_url,
        '/v1/companies/{company_uuid}/finish_onboarding',
        request
      )
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
        req.headers = headers
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::GustoEmbedded::Operations::GetV1CompanyFinishOnboardingResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::CompanyOnboardingStatus)
          res.company_onboarding_status = out
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


    sig { params(company_id: ::String, page: T.nilable(::Integer), per: T.nilable(::Integer), x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdCustomFieldsResponse) }
    def get_custom_fields(company_id, page = nil, per = nil, x_gusto_api_version = nil)
      # get_custom_fields - Get the custom fields of a company
      # Returns a list of the custom fields of the company. Useful when you need to know the schema of custom fields for an entire company
      # 
      # scope: `companies:read`
      request = ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdCustomFieldsRequest.new(
        
        company_id: company_id,
        page: page,
        per: per,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdCustomFieldsRequest,
        base_url,
        '/v1/companies/{company_id}/custom_fields',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdCustomFieldsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdCustomFieldsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::CompanyCustomFieldList)
          res.company_custom_field_list = out
        end
      elsif r.status == 404
      end

      res
    end
  end
end
