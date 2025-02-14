# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class ContractorPayments
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(contractor_payment_uuid: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1ContractorPaymentsContractorPaymentUuidReceiptResponse) }
    def get_receipt(contractor_payment_uuid, x_gusto_api_version = nil)
      # get_receipt - Get a single contractor payment receipt
      # Returns a contractor payment receipt.
      # 
      # Notes:
      # * Receipts are only available for direct deposit payments and are only available once those payments have been funded.
      # * Payroll Receipt requests for payrolls which do not have receipts available (e.g. payment by check) will return a 404 status.
      # * Hour and dollar amounts are returned as string representations of numeric decimals.
      # * Dollar amounts are represented to the cent.
      # * If no data has yet be inserted for a given field, it defaults to “0.00” (for fixed amounts).
      # 
      # scope: `payrolls:read`
      request = ::OpenApiSDK::Operations::GetV1ContractorPaymentsContractorPaymentUuidReceiptRequest.new(
        
        contractor_payment_uuid: contractor_payment_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1ContractorPaymentsContractorPaymentUuidReceiptRequest,
        base_url,
        '/v1/contractor_payments/{contractor_payment_uuid}/receipt',
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

      res = ::OpenApiSDK::Operations::GetV1ContractorPaymentsContractorPaymentUuidReceiptResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::ContractorPaymentReceipt)
          res.contractor_payment_receipt = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(contractor_payment_uuid: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1ContractorPaymentsContractorPaymentUuidFundResponse) }
    def fund(contractor_payment_uuid, x_gusto_api_version = nil)
      # fund - Fund a contractor payment [DEMO]
      # > 🚧 Demo action
      # >
      # > This action is only available in the Demo environment
      # 
      # Simulate funding a contractor payment. Funding only occurs automatically in the production environment when bank transactions are generated. Use this action in the demo environment to transition a contractor payment's `status` from `Unfunded` to `Funded`. A `Funded` status is required for generating a contractor payment receipt.
      # 
      # scope: `payrolls:run`
      request = ::OpenApiSDK::Operations::GetV1ContractorPaymentsContractorPaymentUuidFundRequest.new(
        
        contractor_payment_uuid: contractor_payment_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1ContractorPaymentsContractorPaymentUuidFundRequest,
        base_url,
        '/v1/contractor_payments/{contractor_payment_uuid}/fund',
        request
      )
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetV1ContractorPaymentsContractorPaymentUuidFundResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::ContractorPayment)
          res.contractor_payment = out
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


    sig { params(company_id: ::String, request_body: ::OpenApiSDK::Operations::PostV1CompaniesCompanyIdContractorPaymentsRequestBody, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::PostV1CompaniesCompanyIdContractorPaymentsResponse) }
    def create(company_id, request_body, x_gusto_api_version = nil)
      # create - Create a contractor payment
      # Pay a contractor. Information needed depends on the contractor's wage type (hourly vs fixed)
      # 
      # scope: `payrolls:run`
      request = ::OpenApiSDK::Operations::PostV1CompaniesCompanyIdContractorPaymentsRequest.new(
        
        company_id: company_id,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::PostV1CompaniesCompanyIdContractorPaymentsRequest,
        base_url,
        '/v1/companies/{company_id}/contractor_payments',
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

      res = ::OpenApiSDK::Operations::PostV1CompaniesCompanyIdContractorPaymentsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::ContractorPayment)
          res.contractor_payment = out
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


    sig { params(request: T.nilable(::OpenApiSDK::Operations::GetV1CompaniesCompanyIdContractorPaymentsRequest)).returns(::OpenApiSDK::Operations::GetV1CompaniesCompanyIdContractorPaymentsResponse) }
    def list(request)
      # list - Get contractor payments for a company
      # Returns an object containing individual contractor payments, within a given time period, including totals.
      # 
      # scope: `payrolls:read`
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1CompaniesCompanyIdContractorPaymentsRequest,
        base_url,
        '/v1/companies/{company_id}/contractor_payments',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetV1CompaniesCompanyIdContractorPaymentsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetV1CompaniesCompanyIdContractorPaymentsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::Object)
          res.one_of = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(company_id: ::String, contractor_payment_id: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1CompaniesCompanyIdContractorPaymentContractorPaymentResponse) }
    def get(company_id, contractor_payment_id, x_gusto_api_version = nil)
      # get - Get a single contractor payment
      # Returns a single contractor payment.
      # scope: `payrolls:read`
      request = ::OpenApiSDK::Operations::GetV1CompaniesCompanyIdContractorPaymentContractorPaymentRequest.new(
        
        company_id: company_id,
        contractor_payment_id: contractor_payment_id,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1CompaniesCompanyIdContractorPaymentContractorPaymentRequest,
        base_url,
        '/v1/companies/{company_id}/contractor_payments/{contractor_payment_id}',
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

      res = ::OpenApiSDK::Operations::GetV1CompaniesCompanyIdContractorPaymentContractorPaymentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::ContractorPayment)
          res.contractor_payment = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(company_id: ::String, contractor_payment_id: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::DeleteV1CompaniesCompanyIdContractorPaymentContractorPaymentResponse) }
    def delete(company_id, contractor_payment_id, x_gusto_api_version = nil)
      # delete - Cancel a contractor payment
      # Cancels and deletes a contractor payment. If the contractor payment has already started processing ("may_cancel": true), the payment cannot be cancelled.
      # 
      # scope: `payrolls:run`
      request = ::OpenApiSDK::Operations::DeleteV1CompaniesCompanyIdContractorPaymentContractorPaymentRequest.new(
        
        company_id: company_id,
        contractor_payment_id: contractor_payment_id,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::DeleteV1CompaniesCompanyIdContractorPaymentContractorPaymentRequest,
        base_url,
        '/v1/companies/{company_id}/contractor_payments/{contractor_payment_id}',
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

      res = ::OpenApiSDK::Operations::DeleteV1CompaniesCompanyIdContractorPaymentContractorPaymentResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      elsif r.status == 404
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::UnprocessableEntityErrorObject)
          res.unprocessable_entity_error_object = out
        end
      end

      res
    end


    sig { params(company_uuid: ::String, request_body: ::OpenApiSDK::Operations::GetCompaniesCompanyUuidContractorPaymentsPreviewRequestBody, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetCompaniesCompanyUuidContractorPaymentsPreviewResponse) }
    def preview(company_uuid, request_body, x_gusto_api_version = nil)
      # preview - Preview contractor payment debit date
      # Returns a debit_date dependent on the ACH payment speed of the company.
      # 
      # If the payment method is Check or Historical payment, the debit_date will be the same as the check_date.
      # 
      # scope: `payrolls:read`
      request = ::OpenApiSDK::Operations::GetCompaniesCompanyUuidContractorPaymentsPreviewRequest.new(
        
        company_uuid: company_uuid,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetCompaniesCompanyUuidContractorPaymentsPreviewRequest,
        base_url,
        '/v1/companies/{company_uuid}/contractor_payments/preview',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
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

      res = ::OpenApiSDK::Operations::GetCompaniesCompanyUuidContractorPaymentsPreviewResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetCompaniesCompanyUuidContractorPaymentsPreviewResponseBody)
          res.two_hundred_application_json_object = out
        end
      elsif r.status == 404
      elsif r.status == 422
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetCompaniesCompanyUuidContractorPaymentsPreviewContractorPaymentsResponseBody)
          res.four_hundred_and_twenty_two_application_json_object = out
        end
      end

      res
    end
  end
end
