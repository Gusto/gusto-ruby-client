# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class EmployeeTaxSetup
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(employee_uuid: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdFederalTaxesResponse) }
    def get_federal_taxes(employee_uuid, x_gusto_api_version = nil)
      # get_federal_taxes - Get an employee's federal taxes
      # Get attributes relevant for an employee's federal taxes.
      # 
      #  scope: `employee_federal_taxes:read`
      request = ::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdFederalTaxesRequest.new(
        
        employee_uuid: employee_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdFederalTaxesRequest,
        base_url,
        '/v1/employees/{employee_uuid}/federal_taxes',
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

      res = ::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdFederalTaxesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::EmployeeFederalTax)
          res.employee_federal_tax = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(employee_uuid: ::String, request_body: ::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdFederalTaxesRequestBody, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdFederalTaxesResponse) }
    def update_federal_taxes(employee_uuid, request_body, x_gusto_api_version = nil)
      # update_federal_taxes - Update an employee's federal taxes
      # Update attributes relevant for an employee's federal taxes.
      # 
      # scope: `employee_federal_taxes:write`
      request = ::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdFederalTaxesRequest.new(
        
        employee_uuid: employee_uuid,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdFederalTaxesRequest,
        base_url,
        '/v1/employees/{employee_uuid}/federal_taxes',
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

      res = ::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdFederalTaxesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::EmployeeFederalTax)
          res.employee_federal_tax = out
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


    sig { params(employee_uuid: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdStateTaxesResponse) }
    def get_state_taxes(employee_uuid, x_gusto_api_version = nil)
      # get_state_taxes - Get an employee's state taxes
      # Get attributes relevant for an employee's state taxes.
      # 
      # The data required to correctly calculate an employee's state taxes varies by both home and work location. This API returns information about each question that must be answered grouped by state. Mostly commonly, an employee lives and works in the same state and will only have questions for a single state. The response contains metadata about each question, the type of answer expected, and the current answer stored in Gusto for that question.
      # 
      # Answers are represented by an array. Today, this array can only be empty or contain exactly one element, but is designed to allow for forward compatibility with effective-dated fields. Until effective dated answers are supported, the `valid_from` and `valid_up_to` must always be `"2010-01-01"` and `null` respectively.
      # 
      # ## About filing new hire reports
      # Payroll Admins are responsible for filing a new hire report for each Employee. The `file_new_hire_report` question will only be listed if:
      # - the `employee.onboarding_status` is one of the following:
      #   - `admin_onboarding_incomplete`
      #   - `self_onboarding_awaiting_admin_review`
      # - that employee's work state requires filing a new hire report
      # 
      # scope: `employee_state_taxes:read`
      # 
      request = ::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdStateTaxesRequest.new(
        
        employee_uuid: employee_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdStateTaxesRequest,
        base_url,
        '/v1/employees/{employee_uuid}/state_taxes',
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

      res = ::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdStateTaxesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Shared::EmployeeStateTax])
          res.employee_state_taxes_list = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(employee_uuid: ::String, request_body: ::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdStateTaxesRequestBody, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdStateTaxesResponse) }
    def update_state_taxes(employee_uuid, request_body, x_gusto_api_version = nil)
      # update_state_taxes - Update an employee's state taxes
      # Update attributes relevant for an employee's state taxes.
      # 
      # As described for the GET endpoint, the answers must be supplied in the effective-dated format, but currently only a single answer will be accepted - `valid_from` and `valid_up_to` must be `"2010-01-01"` and `null` respectively.
      # 
      # scope: `employee_state_taxes:write`
      request = ::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdStateTaxesRequest.new(
        
        employee_uuid: employee_uuid,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdStateTaxesRequest,
        base_url,
        '/v1/employees/{employee_uuid}/state_taxes',
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

      res = ::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdStateTaxesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Shared::EmployeeStateTax])
          res.employee_state_taxes_list = out
        end
      elsif r.status == 404
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Operations::ResponseBody])
          res.response_bodies = out
        end
      end

      res
    end
  end
end
