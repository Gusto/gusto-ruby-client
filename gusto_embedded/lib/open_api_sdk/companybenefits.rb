# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class CompanyBenefits
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(company_id: ::String, request_body: ::OpenApiSDK::Operations::PostV1CompaniesCompanyIdCompanyBenefitsRequestBody, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::PostV1CompaniesCompanyIdCompanyBenefitsResponse) }
    def create(company_id, request_body, x_gusto_api_version = nil)
      # create - Create a company benefit
      # Company benefits represent the benefits that a company is offering to employees. This ties together a particular supported benefit with the company-specific information for the offering of that benefit.
      # 
      # Note that company benefits can be deactivated only when no employees are enrolled.
      # 
      # scope: `company_benefits:write`
      request = ::OpenApiSDK::Operations::PostV1CompaniesCompanyIdCompanyBenefitsRequest.new(
        
        company_id: company_id,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::PostV1CompaniesCompanyIdCompanyBenefitsRequest,
        base_url,
        '/v1/companies/{company_id}/company_benefits',
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

      res = ::OpenApiSDK::Operations::PostV1CompaniesCompanyIdCompanyBenefitsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::CompanyBenefit)
          res.company_benefit = out
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


    sig { params(company_id: ::String, enrollment_count: T.nilable(T::Boolean), x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1CompaniesCompanyIdCompanyBenefitsResponse) }
    def list(company_id, enrollment_count = nil, x_gusto_api_version = nil)
      # list - Get benefits for a company
      # Company benefits represent the benefits that a company is offering to employees. This ties together a particular supported benefit with the company-specific information for the offering of that benefit.
      # 
      # Note that company benefits can be deactivated only when no employees are enrolled.
      # 
      # Benefits containing PHI are only visible to applications with the `company_benefits:read:phi` scope.
      # 
      # scope: `company_benefits:read`
      request = ::OpenApiSDK::Operations::GetV1CompaniesCompanyIdCompanyBenefitsRequest.new(
        
        company_id: company_id,
        enrollment_count: enrollment_count,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1CompaniesCompanyIdCompanyBenefitsRequest,
        base_url,
        '/v1/companies/{company_id}/company_benefits',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetV1CompaniesCompanyIdCompanyBenefitsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetV1CompaniesCompanyIdCompanyBenefitsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Shared::CompanyBenefit])
          res.company_benefit_list = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(company_benefit_id: ::String, with_employee_benefits: T.nilable(T::Boolean), x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1CompanyBenefitsCompanyBenefitIdResponse) }
    def get(company_benefit_id, with_employee_benefits = nil, x_gusto_api_version = nil)
      # get - Get a company benefit
      # Company benefits represent the benefits that a company is offering to employees. This ties together a particular supported benefit with the company-specific information for the offering of that benefit.
      # 
      # Note that company benefits can be deactivated only when no employees are enrolled.
      # 
      # When with_employee_benefits parameter with true value is passed, employee_benefits:read scope is required to return employee_benefits.
      # 
      # scope: `company_benefits:read`
      request = ::OpenApiSDK::Operations::GetV1CompanyBenefitsCompanyBenefitIdRequest.new(
        
        company_benefit_id: company_benefit_id,
        with_employee_benefits: with_employee_benefits,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1CompanyBenefitsCompanyBenefitIdRequest,
        base_url,
        '/v1/company_benefits/{company_benefit_id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetV1CompanyBenefitsCompanyBenefitIdRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetV1CompanyBenefitsCompanyBenefitIdResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::CompanyBenefitWithEmployeeBenefits)
          res.company_benefit_with_employee_benefits = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(company_benefit_id: ::String, request_body: ::OpenApiSDK::Operations::PutV1CompanyBenefitsCompanyBenefitIdRequestBody, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::PutV1CompanyBenefitsCompanyBenefitIdResponse) }
    def update(company_benefit_id, request_body, x_gusto_api_version = nil)
      # update - Update a company benefit
      # Company benefits represent the benefits that a company is offering to employees. This ties together a particular supported benefit with the company-specific information for the offering of that benefit.
      # 
      # Note that company benefits can be deactivated only when no employees are enrolled.
      # 
      # scope: `company_benefits:write`
      request = ::OpenApiSDK::Operations::PutV1CompanyBenefitsCompanyBenefitIdRequest.new(
        
        company_benefit_id: company_benefit_id,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::PutV1CompanyBenefitsCompanyBenefitIdRequest,
        base_url,
        '/v1/company_benefits/{company_benefit_id}',
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

      res = ::OpenApiSDK::Operations::PutV1CompanyBenefitsCompanyBenefitIdResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::CompanyBenefit)
          res.company_benefit = out
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


    sig { params(company_benefit_id: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::DeleteV1CompanyBenefitsCompanyBenefitIdResponse) }
    def delete(company_benefit_id, x_gusto_api_version = nil)
      # delete - Delete a company benefit
      # The following must be true in order to delete a company benefit
      #   - There are no employee benefits associated with the company benefit
      #   - There are no payroll items associated with the company benefit
      #   - The benefit is not managed by a Partner or by Gusto (type must be 'External')
      # 
      # scope: `company_benefits:write`
      request = ::OpenApiSDK::Operations::DeleteV1CompanyBenefitsCompanyBenefitIdRequest.new(
        
        company_benefit_id: company_benefit_id,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::DeleteV1CompanyBenefitsCompanyBenefitIdRequest,
        base_url,
        '/v1/company_benefits/{company_benefit_id}',
        request
      )
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::DeleteV1CompanyBenefitsCompanyBenefitIdResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      elsif r.status == 404
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::DeleteV1CompanyBenefitsCompanyBenefitIdResponseBody)
          res.object = out
        end
      end

      res
    end


    sig { params(x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1BenefitsResponse) }
    def get_all(x_gusto_api_version = nil)
      # get_all - Get all benefits supported by Gusto
      # Returns all benefits supported by Gusto.
      # 
      # The benefit object in Gusto contains high level information about a particular benefit type and its tax considerations. When companies choose to offer a benefit, they are creating a Company Benefit object associated with a particular benefit.
      # 
      # scope: `benefits:read`
      request = ::OpenApiSDK::Operations::GetV1BenefitsRequest.new(
        
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/benefits"
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetV1BenefitsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Shared::SupportedBenefit])
          res.supported_benefit_list = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(benefit_id: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1BenefitsBenefitIdResponse) }
    def get_supported(benefit_id, x_gusto_api_version = nil)
      # get_supported - Get a supported benefit by ID
      # Returns a benefit supported by Gusto.
      # 
      # The benefit object in Gusto contains high level information about a particular benefit type and its tax considerations. When companies choose to offer a benefit, they are creating a Company Benefit object associated with a particular benefit.
      # 
      # scope: `benefits:read`
      request = ::OpenApiSDK::Operations::GetV1BenefitsBenefitIdRequest.new(
        
        benefit_id: benefit_id,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1BenefitsBenefitIdRequest,
        base_url,
        '/v1/benefits/{benefit_id}',
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

      res = ::OpenApiSDK::Operations::GetV1BenefitsBenefitIdResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::SupportedBenefit)
          res.supported_benefit = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(request: T.nilable(::OpenApiSDK::Operations::GetV1BenefitsCompanyBenefitIdSummaryRequest)).returns(::OpenApiSDK::Operations::GetV1BenefitsCompanyBenefitIdSummaryResponse) }
    def get_summary(request)
      # get_summary - Get company benefit summary by company benefit id.
      # Returns summary benefit data for the requested company benefit id.
      # 
      # Benefits containing PHI are only visible to applications with the `company_benefits:read:phi` scope.
      # 
      # scope: `company_benefits:read`
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1BenefitsCompanyBenefitIdSummaryRequest,
        base_url,
        '/v1/company_benefits/{company_benefit_id}/summary',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetV1BenefitsCompanyBenefitIdSummaryRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetV1BenefitsCompanyBenefitIdSummaryResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::BenefitSummary)
          res.benefit_summary = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(company_benefit_id: ::String, page: T.nilable(::Float), per: T.nilable(::Float), x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1CompanyBenefitsCompanyBenefitIdEmployeeBenefitsResponse) }
    def get_employee_benefits(company_benefit_id, page = nil, per = nil, x_gusto_api_version = nil)
      # get_employee_benefits - Get all employee benefits for a company benefit
      # Employee benefits represent an employee enrolled in a particular company benefit. It includes information specific to that employee’s enrollment.
      # 
      # Returns an array of all employee benefits enrolled for this company benefit.
      # 
      # Benefits containing PHI are only visible to applications with the `employee_benefits:read:phi` scope.
      # 
      # scope: `employee_benefits:read`
      request = ::OpenApiSDK::Operations::GetV1CompanyBenefitsCompanyBenefitIdEmployeeBenefitsRequest.new(
        
        company_benefit_id: company_benefit_id,
        page: page,
        per: per,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1CompanyBenefitsCompanyBenefitIdEmployeeBenefitsRequest,
        base_url,
        '/v1/company_benefits/{company_benefit_id}/employee_benefits',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetV1CompanyBenefitsCompanyBenefitIdEmployeeBenefitsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetV1CompanyBenefitsCompanyBenefitIdEmployeeBenefitsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Shared::EmployeeBenefit])
          res.employee_benefit_list = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(company_benefit_id: ::String, request_body: ::OpenApiSDK::Operations::PutV1CompanyBenefitsCompanyBenefitIdEmployeeBenefitsRequestBody, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::PutV1CompanyBenefitsCompanyBenefitIdEmployeeBenefitsResponse) }
    def update_employee_benefits(company_benefit_id, request_body, x_gusto_api_version = nil)
      # update_employee_benefits - Bulk update employee benefits for a company benefit
      # Employee benefits represent an employee enrolled in a particular company benefit. It includes information specific to that employee’s enrollment.
      # 
      # Create or update(if the employee is already enrolled in the company benefit previously) an employee benefit for the company benefit.
      # 
      # Benefits containing PHI are only visible to applications with the `employee_benefits:read:phi` scope.
      # 
      # scope: `employee_benefits:write`
      request = ::OpenApiSDK::Operations::PutV1CompanyBenefitsCompanyBenefitIdEmployeeBenefitsRequest.new(
        
        company_benefit_id: company_benefit_id,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::PutV1CompanyBenefitsCompanyBenefitIdEmployeeBenefitsRequest,
        base_url,
        '/v1/company_benefits/{company_benefit_id}/employee_benefits',
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

      res = ::OpenApiSDK::Operations::PutV1CompanyBenefitsCompanyBenefitIdEmployeeBenefitsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Shared::EmployeeBenefit])
          res.employee_benefit_list = out
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


    sig { params(benefit_id: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1BenefitsBenefitsIdRequirementsResponse) }
    def get_requirements(benefit_id, x_gusto_api_version = nil)
      # get_requirements - Get benefit fields requirements by ID
      # Returns field requirements for the requested benefit type.
      # 
      # scope: `benefits:read`
      request = ::OpenApiSDK::Operations::GetV1BenefitsBenefitsIdRequirementsRequest.new(
        
        benefit_id: benefit_id,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1BenefitsBenefitsIdRequirementsRequest,
        base_url,
        '/v1/benefits/{benefit_id}/requirements',
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

      res = ::OpenApiSDK::Operations::GetV1BenefitsBenefitsIdRequirementsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::BenefitTypeRequirements)
          res.benefit_type_requirements = out
        end
      elsif r.status == 404
      end

      res
    end
  end
end
