# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Garnishments
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(employee_id: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader), request_body: T.nilable(::OpenApiSDK::Operations::PostV1EmployeesEmployeeIdGarnishmentsRequestBody)).returns(::OpenApiSDK::Operations::PostV1EmployeesEmployeeIdGarnishmentsResponse) }
    def create(employee_id, x_gusto_api_version = nil, request_body = nil)
      # create - Create a garnishment
      # Garnishments, or employee deductions, are fixed amounts or percentages deducted from an employee’s pay. They can be deducted a specific number of times or on a recurring basis. Garnishments can also have maximum deductions on a yearly or per-pay-period bases. Common uses for garnishments are court-ordered payments for child support or back taxes. Some companies provide loans to their employees that are repaid via garnishments.
      # 
      # scope: `garnishments:write`
      request = ::OpenApiSDK::Operations::PostV1EmployeesEmployeeIdGarnishmentsRequest.new(
        
        employee_id: employee_id,
        x_gusto_api_version: x_gusto_api_version,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::PostV1EmployeesEmployeeIdGarnishmentsRequest,
        base_url,
        '/v1/employees/{employee_id}/garnishments',
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

      res = ::OpenApiSDK::Operations::PostV1EmployeesEmployeeIdGarnishmentsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Garnishment)
          res.garnishment = out
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


    sig { params(employee_id: ::String, page: T.nilable(::Float), per: T.nilable(::Float), x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdGarnishmentsResponse) }
    def list_by_employee(employee_id, page = nil, per = nil, x_gusto_api_version = nil)
      # list_by_employee - Get garnishments for an employee
      # Garnishments, or employee deductions, are fixed amounts or percentages deducted from an employee’s pay. They can be deducted a specific number of times or on a recurring basis. Garnishments can also have maximum deductions on a yearly or per-pay-period bases. Common uses for garnishments are court-ordered payments for child support or back taxes. Some companies provide loans to their employees that are repaid via garnishments.
      # 
      # scope: `garnishments:read`
      request = ::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdGarnishmentsRequest.new(
        
        employee_id: employee_id,
        page: page,
        per: per,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdGarnishmentsRequest,
        base_url,
        '/v1/employees/{employee_id}/garnishments',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdGarnishmentsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdGarnishmentsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Shared::Garnishment])
          res.garnishment_list = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(garnishment_id: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1GarnishmentsGarnishmentIdResponse) }
    def get(garnishment_id, x_gusto_api_version = nil)
      # get - Get a garnishment
      # Garnishments, or employee deductions, are fixed amounts or percentages deducted from an employee’s pay. They can be deducted a specific number of times or on a recurring basis. Garnishments can also have maximum deductions on a yearly or per-pay-period bases. Common uses for garnishments are court-ordered payments for child support or back taxes. Some companies provide loans to their employees that are repaid via garnishments.
      # 
      # scope: `garnishments:read`
      request = ::OpenApiSDK::Operations::GetV1GarnishmentsGarnishmentIdRequest.new(
        
        garnishment_id: garnishment_id,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1GarnishmentsGarnishmentIdRequest,
        base_url,
        '/v1/garnishments/{garnishment_id}',
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

      res = ::OpenApiSDK::Operations::GetV1GarnishmentsGarnishmentIdResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Garnishment)
          res.garnishment = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(garnishment_id: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader), request_body: T.nilable(::OpenApiSDK::Operations::PutV1GarnishmentsGarnishmentIdRequestBody)).returns(::OpenApiSDK::Operations::PutV1GarnishmentsGarnishmentIdResponse) }
    def update(garnishment_id, x_gusto_api_version = nil, request_body = nil)
      # update - Update a garnishment
      # Garnishments, or employee deductions, are fixed amounts or percentages deducted from an employee’s pay. They can be deducted a specific number of times or on a recurring basis. Garnishments can also have maximum deductions on a yearly or per-pay-period bases. Common uses for garnishments are court-ordered payments for child support or back taxes. Some companies provide loans to their employees that are repaid via garnishments.
      # 
      # scope: `garnishments:write`
      request = ::OpenApiSDK::Operations::PutV1GarnishmentsGarnishmentIdRequest.new(
        
        garnishment_id: garnishment_id,
        x_gusto_api_version: x_gusto_api_version,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::PutV1GarnishmentsGarnishmentIdRequest,
        base_url,
        '/v1/garnishments/{garnishment_id}',
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

      res = ::OpenApiSDK::Operations::PutV1GarnishmentsGarnishmentIdResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::Garnishment)
          res.garnishment = out
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


    sig { params(x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1GarnishmentsChildSupportResponse) }
    def get_child_support(x_gusto_api_version = nil)
      # get_child_support - Get child support garnishment data
      # Agency data and requirements to be used for creating child support garnishments
      # 
      # scope: `garnishments:read`
      request = ::OpenApiSDK::Operations::GetV1GarnishmentsChildSupportRequest.new(
        
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/garnishments/child_support"
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetV1GarnishmentsChildSupportResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::ChildSupportData)
          res.child_support_data = out
        end
      elsif r.status == 404
      end

      res
    end
  end
end
