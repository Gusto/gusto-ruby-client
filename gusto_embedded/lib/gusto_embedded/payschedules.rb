# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module GustoEmbedded
  extend T::Sig
  class PaySchedules
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(company_id: ::String, request_body: ::GustoEmbedded::Operations::PostV1CompaniesCompanyIdPaySchedulesRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PostV1CompaniesCompanyIdPaySchedulesResponse) }
    def create(company_id, request_body, x_gusto_api_version = nil)
      # create - Create a new pay schedule
      # If a company does not have any pay schedules, this endpoint will create a single pay schedule and assign it to all employees. This is a common use case during company onboarding.
      # 
      # If a company has an existing active pay schedule and want to support multiple pay schedules, this endpoint will create a pay schedule that is not assigned to any employee.
      # 
      # Be sure to **[check state laws](https://www.dol.gov/agencies/whd/state/payday)** to know what schedule is right for your customers.
      # 
      # scope: `pay_schedules:write`
      request = ::GustoEmbedded::Operations::PostV1CompaniesCompanyIdPaySchedulesRequest.new(
        
        company_id: company_id,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PostV1CompaniesCompanyIdPaySchedulesRequest,
        base_url,
        '/v1/companies/{company_id}/pay_schedules',
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

      res = ::GustoEmbedded::Operations::PostV1CompaniesCompanyIdPaySchedulesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::PayScheduleCreateUpdate)
          res.pay_schedule_create_update = out
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


    sig { params(company_id: ::String, page: T.nilable(::Integer), per: T.nilable(::Integer), x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesResponse) }
    def get_all(company_id, page = nil, per = nil, x_gusto_api_version = nil)
      # get_all - Get the pay schedules for a company
      # The pay schedule object in Gusto captures the details of when employees work and when they should be paid. A company can have multiple pay schedules.
      # 
      # scope: `pay_schedules:read`
      request = ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesRequest.new(
        
        company_id: company_id,
        page: page,
        per: per,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesRequest,
        base_url,
        '/v1/companies/{company_id}/pay_schedules',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::GustoEmbedded::Shared::PayScheduleList])
          res.pay_schedule_list = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(request: T.nilable(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesPreviewRequest)).returns(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesPreviewResponse) }
    def get_preview(request)
      # get_preview - Preview pay schedule dates
      # Provides a preview of a pay schedule with the specified parameters for the next 18 months.
      # 
      # scope: `pay_schedules:write`
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesPreviewRequest,
        base_url,
        '/v1/companies/{company_id}/pay_schedules/preview',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesPreviewRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesPreviewResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesPreviewResponseBody)
          res.object = out
        end
      end

      res
    end


    sig { params(company_id: ::String, pay_schedule_id: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesPayScheduleIdResponse) }
    def get(company_id, pay_schedule_id, x_gusto_api_version = nil)
      # get - Get a pay schedule
      # The pay schedule object in Gusto captures the details of when employees work and when they should be paid. A company can have multiple pay schedules.
      # 
      # scope: `pay_schedules:read`
      request = ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesPayScheduleIdRequest.new(
        
        company_id: company_id,
        pay_schedule_id: pay_schedule_id,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesPayScheduleIdRequest,
        base_url,
        '/v1/companies/{company_id}/pay_schedules/{pay_schedule_id}',
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

      res = ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesPayScheduleIdResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::PayScheduleObject)
          res.pay_schedule_object = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(company_id: ::String, pay_schedule_id: ::String, request_body: ::GustoEmbedded::Operations::PutV1CompaniesCompanyIdPaySchedulesPayScheduleIdRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PutV1CompaniesCompanyIdPaySchedulesPayScheduleIdResponse) }
    def update(company_id, pay_schedule_id, request_body, x_gusto_api_version = nil)
      # update - Update a pay schedule
      # Updates a pay schedule.
      # 
      # scope: `pay_schedules:write`
      request = ::GustoEmbedded::Operations::PutV1CompaniesCompanyIdPaySchedulesPayScheduleIdRequest.new(
        
        company_id: company_id,
        pay_schedule_id: pay_schedule_id,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PutV1CompaniesCompanyIdPaySchedulesPayScheduleIdRequest,
        base_url,
        '/v1/companies/{company_id}/pay_schedules/{pay_schedule_id}',
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

      res = ::GustoEmbedded::Operations::PutV1CompaniesCompanyIdPaySchedulesPayScheduleIdResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::PayScheduleCreateUpdate)
          res.pay_schedule_create_update = out
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


    sig { params(request: T.nilable(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPayPeriodsRequest)).returns(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPayPeriodsResponse) }
    def get_pay_periods(request)
      # get_pay_periods - Get pay periods for a company
      # Pay periods are the foundation of payroll. Compensation, time & attendance, taxes, and expense reports all rely on when they happened. To begin submitting information for a given payroll, we need to agree on the time period.
      # 
      # By default, this endpoint returns pay periods starting from 6 months ago to the date today.  Use the `start_date` and `end_date` parameters to change the scope of the response.  End dates can be up to 3 months in the future and there is no limit on start dates.
      # 
      # Starting in version '2023-04-01', the eligible_employees attribute was removed from the response.  The eligible employees for a payroll are determined by the employee_compensations returned from the payrolls#prepare endpoint.
      # 
      # scope: `payrolls:read`
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPayPeriodsRequest,
        base_url,
        '/v1/companies/{company_id}/pay_periods',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPayPeriodsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPayPeriodsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::GustoEmbedded::Shared::PayPeriod])
          res.pay_period_list = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(company_id: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdUnprocessedTerminationPayPeriodsResponse) }
    def get_unprocessed_termination_periods(company_id, x_gusto_api_version = nil)
      # get_unprocessed_termination_periods - Get termination pay periods for a company
      # When a payroll admin terminates an employee and selects "Dismissal Payroll" as the employee's final payroll, their last pay period will appear on the list.
      # 
      # This endpoint returns the unprocessed pay periods for past and future terminated employees in a given company.
      # 
      # scope: `payrolls:read`
      request = ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdUnprocessedTerminationPayPeriodsRequest.new(
        
        company_id: company_id,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdUnprocessedTerminationPayPeriodsRequest,
        base_url,
        '/v1/companies/{company_id}/pay_periods/unprocessed_termination_pay_periods',
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

      res = ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdUnprocessedTerminationPayPeriodsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::GustoEmbedded::Shared::UnprocessedTerminationPayPeriod])
          res.unprocessed_termination_pay_period_list = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(company_id: ::String, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesAssignmentsResponse) }
    def get_assignments(company_id, x_gusto_api_version = nil)
      # get_assignments - Get pay schedule assignments for a company
      # This endpoint returns the current pay schedule assignment for a company, with pay schedule and employee/department mappings depending on the pay schedule type.
      # 
      # scope: `pay_schedules:read`
      request = ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesAssignmentsRequest.new(
        
        company_id: company_id,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesAssignmentsRequest,
        base_url,
        '/v1/companies/{company_id}/pay_schedules/assignments',
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

      res = ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdPaySchedulesAssignmentsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::PayScheduleAssignment)
          res.pay_schedule_assignment = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(company_id: ::String, pay_schedule_assignment_body: ::GustoEmbedded::Shared::PayScheduleAssignmentBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PostV1CompaniesCompanyIdPaySchedulesAssignmentPreviewResponse) }
    def preview_assignment(company_id, pay_schedule_assignment_body, x_gusto_api_version = nil)
      # preview_assignment - Preview pay schedule assignments for a company
      # This endpoint returns the employee changes, including pay period and transition pay periods, for changing the pay schedule.
      # 
      # scope: `pay_schedules:write`
      request = ::GustoEmbedded::Operations::PostV1CompaniesCompanyIdPaySchedulesAssignmentPreviewRequest.new(
        
        company_id: company_id,
        pay_schedule_assignment_body: pay_schedule_assignment_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PostV1CompaniesCompanyIdPaySchedulesAssignmentPreviewRequest,
        base_url,
        '/v1/companies/{company_id}/pay_schedules/assignment_preview',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :pay_schedule_assignment_body, :json)
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

      res = ::GustoEmbedded::Operations::PostV1CompaniesCompanyIdPaySchedulesAssignmentPreviewResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::PayScheduleAssignmentPreview)
          res.pay_schedule_assignment_preview = out
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


    sig { params(company_id: ::String, pay_schedule_assignment_body: ::GustoEmbedded::Shared::PayScheduleAssignmentBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PostV1CompaniesCompanyIdPaySchedulesAssignResponse) }
    def assign(company_id, pay_schedule_assignment_body, x_gusto_api_version = nil)
      # assign - Assign pay schedules for a company
      # This endpoint assigns employees to pay schedules based on the schedule type.
      # For `by_employee` and `by_department` schedules, use the `partial_assignment` parameter to control the assignment scope. Set it to `true` for partial assignments (only some employees or departments at a time) and `false` for full assignments (all employees or departments at once).
      # 
      # scope: `pay_schedules:write`
      request = ::GustoEmbedded::Operations::PostV1CompaniesCompanyIdPaySchedulesAssignRequest.new(
        
        company_id: company_id,
        pay_schedule_assignment_body: pay_schedule_assignment_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PostV1CompaniesCompanyIdPaySchedulesAssignRequest,
        base_url,
        '/v1/companies/{company_id}/pay_schedules/assign',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :pay_schedule_assignment_body, :json)
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

      res = ::GustoEmbedded::Operations::PostV1CompaniesCompanyIdPaySchedulesAssignResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
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
