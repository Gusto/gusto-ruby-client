# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module GustoEmbedded
  extend T::Sig
  class EmployeeBenefits
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(employee_id: ::String, request_body: ::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdEmployeeBenefitsRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdEmployeeBenefitsResponse) }
    def create(employee_id, request_body, x_gusto_api_version = nil)
      # create - Create an employee benefit
      # Employee benefits represent an employee enrolled in a particular company benefit. It includes information specific to that employee’s enrollment.
      # 
      # scope: `employee_benefits:write`
      request = ::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdEmployeeBenefitsRequest.new(
        
        employee_id: employee_id,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdEmployeeBenefitsRequest,
        base_url,
        '/v1/employees/{employee_id}/employee_benefits',
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

      res = ::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdEmployeeBenefitsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::EmployeeBenefit)
          res.employee_benefit = out
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


    sig { params(employee_id: ::String, page: T.nilable(::Integer), per: T.nilable(::Integer), x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdEmployeeBenefitsResponse) }
    def get(employee_id, page = nil, per = nil, x_gusto_api_version = nil)
      # get - Get all benefits for an employee
      # Employee benefits represent an employee enrolled in a particular company benefit. It includes information specific to that employee’s enrollment.
      # 
      # Returns an array of all employee benefits for this employee
      # 
      # Benefits containing PHI are only visible to applications with the `employee_benefits:read:phi` scope.
      # 
      # scope: `employee_benefits:read`
      request = ::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdEmployeeBenefitsRequest.new(
        
        employee_id: employee_id,
        page: page,
        per: per,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdEmployeeBenefitsRequest,
        base_url,
        '/v1/employees/{employee_id}/employee_benefits',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdEmployeeBenefitsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdEmployeeBenefitsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::GustoEmbedded::Shared::EmployeeBenefit])
          res.employee_benefit_list = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(employee_benefit_id: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1EmployeeBenefitsEmployeeBenefitIdResponse) }
    def retrieve(employee_benefit_id, x_gusto_api_version = nil)
      # retrieve - Get an employee benefit
      # Employee benefits represent an employee enrolled in a particular company benefit. It includes information specific to that employee’s enrollment.
      # 
      # Benefits containing PHI are only visible to applications with the `employee_benefits:read:phi` scope.
      # 
      # scope: `employee_benefits:read`
      request = ::GustoEmbedded::Operations::GetV1EmployeeBenefitsEmployeeBenefitIdRequest.new(
        
        employee_benefit_id: employee_benefit_id,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1EmployeeBenefitsEmployeeBenefitIdRequest,
        base_url,
        '/v1/employee_benefits/{employee_benefit_id}',
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

      res = ::GustoEmbedded::Operations::GetV1EmployeeBenefitsEmployeeBenefitIdResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::EmployeeBenefit)
          res.employee_benefit = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(employee_benefit_id: ::String, request_body: ::GustoEmbedded::Operations::PutV1EmployeeBenefitsEmployeeBenefitIdRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PutV1EmployeeBenefitsEmployeeBenefitIdResponse) }
    def update(employee_benefit_id, request_body, x_gusto_api_version = nil)
      # update - Update an employee benefit
      # Employee benefits represent an employee enrolled in a particular company benefit. It includes information specific to that employee’s enrollment.
      # 
      # scope: `employee_benefits:write`
      request = ::GustoEmbedded::Operations::PutV1EmployeeBenefitsEmployeeBenefitIdRequest.new(
        
        employee_benefit_id: employee_benefit_id,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PutV1EmployeeBenefitsEmployeeBenefitIdRequest,
        base_url,
        '/v1/employee_benefits/{employee_benefit_id}',
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

      res = ::GustoEmbedded::Operations::PutV1EmployeeBenefitsEmployeeBenefitIdResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::EmployeeBenefit)
          res.employee_benefit = out
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


    sig { params(employee_benefit_id: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::DeleteV1EmployeeBenefitsEmployeeBenefitIdResponse) }
    def delete(employee_benefit_id, x_gusto_api_version = nil)
      # delete - Delete an employee benefit
      # Employee benefits represent an employee enrolled in a particular company benefit. It includes information specific to that employee’s enrollment.
      # 
      # scope: `employee_benefits:write`
      request = ::GustoEmbedded::Operations::DeleteV1EmployeeBenefitsEmployeeBenefitIdRequest.new(
        
        employee_benefit_id: employee_benefit_id,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::DeleteV1EmployeeBenefitsEmployeeBenefitIdRequest,
        base_url,
        '/v1/employee_benefits/{employee_benefit_id}',
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

      res = ::GustoEmbedded::Operations::DeleteV1EmployeeBenefitsEmployeeBenefitIdResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      elsif r.status == 404
      end

      res
    end


    sig { params(employee_id: ::String, tax_year: T.nilable(::Integer), x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetEmployeeYtdBenefitAmountsFromDifferentCompanyResponse) }
    def get_ytd_benefit_amounts_from_different_company(employee_id, tax_year = nil, x_gusto_api_version = nil)
      # get_ytd_benefit_amounts_from_different_company - Get year-to-date benefit amounts from a different company
      # Retrieves year-to-date benefit amounts that were contributed at a different company for the specified employee.
      # Returns benefit amounts for the requested tax year (defaults to current year if not specified).
      # 
      # This endpoint only supports retrieving outside contributions for 401(k) benefits.
      # 
      # scope: `employee_benefits:read`
      request = ::GustoEmbedded::Operations::GetEmployeeYtdBenefitAmountsFromDifferentCompanyRequest.new(
        
        employee_id: employee_id,
        tax_year: tax_year,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetEmployeeYtdBenefitAmountsFromDifferentCompanyRequest,
        base_url,
        '/v1/employees/{employee_id}/ytd_benefit_amounts_from_different_company',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::GustoEmbedded::Operations::GetEmployeeYtdBenefitAmountsFromDifferentCompanyRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::GustoEmbedded::Operations::GetEmployeeYtdBenefitAmountsFromDifferentCompanyResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::GustoEmbedded::Shared::YtdBenefitAmountsFromDifferentCompany])
          res.ytd_benefit_amounts_from_different_company_list = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(employee_id: ::String, post_employee_ytd_benefit_amounts_from_different_company: ::GustoEmbedded::Shared::PostEmployeeYtdBenefitAmountsFromDifferentCompany, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PostEmployeeYtdBenefitAmountsFromDifferentCompanyResponse) }
    def create_ytd_benefit_amounts_from_different_company(employee_id, post_employee_ytd_benefit_amounts_from_different_company, x_gusto_api_version = nil)
      # create_ytd_benefit_amounts_from_different_company - Create year-to-date benefit amounts from a different company
      # Year-to-date benefit amounts from a different company represents the amount of money added to an employee's plan during a current year, made outside of the current contribution when they were employed at a different company.
      # 
      # This endpoint only supports passing outside contributions for 401(k) benefits.
      # 
      # scope: `employee_benefits:write`
      request = ::GustoEmbedded::Operations::PostEmployeeYtdBenefitAmountsFromDifferentCompanyRequest.new(
        
        employee_id: employee_id,
        post_employee_ytd_benefit_amounts_from_different_company: post_employee_ytd_benefit_amounts_from_different_company,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PostEmployeeYtdBenefitAmountsFromDifferentCompanyRequest,
        base_url,
        '/v1/employees/{employee_id}/ytd_benefit_amounts_from_different_company',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :post_employee_ytd_benefit_amounts_from_different_company, :json)
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

      res = ::GustoEmbedded::Operations::PostEmployeeYtdBenefitAmountsFromDifferentCompanyResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
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
