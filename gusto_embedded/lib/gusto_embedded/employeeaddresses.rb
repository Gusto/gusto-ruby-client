# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module GustoEmbedded
  extend T::Sig
  class EmployeeAddresses
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(employee_id: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdHomeAddressesResponse) }
    def get(employee_id, x_gusto_api_version = nil)
      # get - Get an employee's home addresses
      # The home address of an employee is used to determine certain tax information about them. Addresses are geocoded on create and update to ensure validity.
      # 
      # Supports home address effective dating and courtesy withholding.
      # 
      # scope: `employees:read`
      request = ::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdHomeAddressesRequest.new(
        
        employee_id: employee_id,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdHomeAddressesRequest,
        base_url,
        '/v1/employees/{employee_id}/home_addresses',
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

      res = ::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdHomeAddressesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::GustoEmbedded::Shared::EmployeeAddress])
          res.employee_address_list = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(employee_id: ::String, request_body: ::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdHomeAddressesRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdHomeAddressesResponse) }
    def create(employee_id, request_body, x_gusto_api_version = nil)
      # create - Create an employee's home address
      # The home address of an employee is used to determine certain tax information about them. Addresses are geocoded on create and update to ensure validity.
      # 
      # Supports home address effective dating and courtesy withholding.
      # 
      # scope: `employees:write`
      request = ::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdHomeAddressesRequest.new(
        
        employee_id: employee_id,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdHomeAddressesRequest,
        base_url,
        '/v1/employees/{employee_id}/home_addresses',
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

      res = ::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdHomeAddressesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::EmployeeAddress)
          res.employee_address = out
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


    sig { params(home_address_uuid: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1HomeAddressesHomeAddressUuidResponse) }
    def retrieve_home_address(home_address_uuid, x_gusto_api_version = nil)
      # retrieve_home_address - Get an employee's home address
      # The home address of an employee is used to determine certain tax information about them. Addresses are geocoded on create and update to ensure validity.
      # 
      # Supports home address effective dating and courtesy withholding.
      # 
      # scope: `employees:read`
      request = ::GustoEmbedded::Operations::GetV1HomeAddressesHomeAddressUuidRequest.new(
        
        home_address_uuid: home_address_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1HomeAddressesHomeAddressUuidRequest,
        base_url,
        '/v1/home_addresses/{home_address_uuid}',
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

      res = ::GustoEmbedded::Operations::GetV1HomeAddressesHomeAddressUuidResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::EmployeeAddress)
          res.employee_address = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(home_address_uuid: ::String, request_body: ::GustoEmbedded::Operations::PutV1HomeAddressesHomeAddressUuidRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PutV1HomeAddressesHomeAddressUuidResponse) }
    def update(home_address_uuid, request_body, x_gusto_api_version = nil)
      # update - Update an employee's home address
      # The home address of an employee is used to determine certain tax information about them. Addresses are geocoded on create and update to ensure validity.
      # 
      # Supports home address effective dating and courtesy withholding.
      # 
      # scope: `employees:write`
      request = ::GustoEmbedded::Operations::PutV1HomeAddressesHomeAddressUuidRequest.new(
        
        home_address_uuid: home_address_uuid,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PutV1HomeAddressesHomeAddressUuidRequest,
        base_url,
        '/v1/home_addresses/{home_address_uuid}',
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

      res = ::GustoEmbedded::Operations::PutV1HomeAddressesHomeAddressUuidResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::EmployeeAddress)
          res.employee_address = out
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


    sig { params(home_address_uuid: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::DeleteV1HomeAddressesHomeAddressUuidResponse) }
    def delete(home_address_uuid, x_gusto_api_version = nil)
      # delete - Delete an employee's home address
      # Used for deleting an employee's home address.  Cannot delete the employee's active home address.
      # 
      # scope: `employees:write`
      request = ::GustoEmbedded::Operations::DeleteV1HomeAddressesHomeAddressUuidRequest.new(
        
        home_address_uuid: home_address_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::DeleteV1HomeAddressesHomeAddressUuidRequest,
        base_url,
        '/v1/home_addresses/{home_address_uuid}',
        request
      )
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::GustoEmbedded::Operations::DeleteV1HomeAddressesHomeAddressUuidResponse.new(
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


    sig { params(employee_id: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdWorkAddressesResponse) }
    def get_work_addresses(employee_id, x_gusto_api_version = nil)
      # get_work_addresses - Get an employee's work addresses
      # Returns a list of an employee's work addresses. Each address includes its effective date and a boolean
      # signifying if it is the currently active work address.
      # 
      # scope: `employees:read`
      request = ::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdWorkAddressesRequest.new(
        
        employee_id: employee_id,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdWorkAddressesRequest,
        base_url,
        '/v1/employees/{employee_id}/work_addresses',
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

      res = ::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdWorkAddressesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::GustoEmbedded::Shared::EmployeeWorkAddress])
          res.employee_work_address_list = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(employee_id: ::String, request_body: ::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdWorkAddressesRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdWorkAddressesResponse) }
    def create_work_address(employee_id, request_body, x_gusto_api_version = nil)
      # create_work_address - Create an employee work address
      # The work address of an employee describes when an employee began working at an associated company location.
      # 
      # scope: `employees:manage`
      request = ::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdWorkAddressesRequest.new(
        
        employee_id: employee_id,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdWorkAddressesRequest,
        base_url,
        '/v1/employees/{employee_id}/work_addresses',
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

      res = ::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdWorkAddressesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::EmployeeWorkAddress)
          res.employee_work_address = out
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


    sig { params(work_address_uuid: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1WorkAddressesWorkAddressUuidResponse) }
    def retrieve_work_address(work_address_uuid, x_gusto_api_version = nil)
      # retrieve_work_address - Get an employee work address
      # The work address of an employee is used for payroll tax purposes.
      # 
      # scope: `employees:read`
      request = ::GustoEmbedded::Operations::GetV1WorkAddressesWorkAddressUuidRequest.new(
        
        work_address_uuid: work_address_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1WorkAddressesWorkAddressUuidRequest,
        base_url,
        '/v1/work_addresses/{work_address_uuid}',
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

      res = ::GustoEmbedded::Operations::GetV1WorkAddressesWorkAddressUuidResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::EmployeeWorkAddress)
          res.employee_work_address = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(work_address_uuid: ::String, request_body: ::GustoEmbedded::Operations::PutV1WorkAddressesWorkAddressUuidRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PutV1WorkAddressesWorkAddressUuidResponse) }
    def update_work_address(work_address_uuid, request_body, x_gusto_api_version = nil)
      # update_work_address - Update an employee work address
      # The work address of an employee is used for payroll tax purposes.
      # 
      # scope: `employees:manage`
      request = ::GustoEmbedded::Operations::PutV1WorkAddressesWorkAddressUuidRequest.new(
        
        work_address_uuid: work_address_uuid,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PutV1WorkAddressesWorkAddressUuidRequest,
        base_url,
        '/v1/work_addresses/{work_address_uuid}',
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

      res = ::GustoEmbedded::Operations::PutV1WorkAddressesWorkAddressUuidResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::EmployeeWorkAddress)
          res.employee_work_address = out
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


    sig { params(work_address_uuid: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::DeleteV1WorkAddressesWorkAddressUuidResponse) }
    def delete_work_address(work_address_uuid, x_gusto_api_version = nil)
      # delete_work_address - Delete an employee's work address
      # Used for deleting an employee's work address.  Cannot delete the employee's active work address.
      # 
      # scope: `employees:manage`
      request = ::GustoEmbedded::Operations::DeleteV1WorkAddressesWorkAddressUuidRequest.new(
        
        work_address_uuid: work_address_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::DeleteV1WorkAddressesWorkAddressUuidRequest,
        base_url,
        '/v1/work_addresses/{work_address_uuid}',
        request
      )
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::GustoEmbedded::Operations::DeleteV1WorkAddressesWorkAddressUuidResponse.new(
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
