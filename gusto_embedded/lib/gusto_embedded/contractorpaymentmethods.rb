# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module GustoEmbedded
  extend T::Sig
  class ContractorPaymentMethods
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(contractor_uuid: ::String, request_body: ::GustoEmbedded::Operations::PostV1ContractorsContractorUuidBankAccountsRequestBody, x_gusto_api_version: T.nilable(::GustoEmbedded::Shared::VersionHeader)).returns(::GustoEmbedded::Operations::PostV1ContractorsContractorUuidBankAccountsResponse) }
    def create_bank_account(contractor_uuid, request_body, x_gusto_api_version = nil)
      # create_bank_account - Create a contractor bank account
      # Creates a contractor bank account.
      # 
      # Note: We currently only support one bank account per contractor. Using this endpoint on a contractor who already has a bank account will just replace it.
      # 
      # scope: `contractor_payment_methods:write`
      request = ::GustoEmbedded::Operations::PostV1ContractorsContractorUuidBankAccountsRequest.new(
        
        contractor_uuid: contractor_uuid,
        request_body: request_body,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::GustoEmbedded::Operations::PostV1ContractorsContractorUuidBankAccountsRequest,
        base_url,
        '/v1/contractors/{contractor_uuid}/bank_accounts',
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

      res = ::GustoEmbedded::Operations::PostV1ContractorsContractorUuidBankAccountsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::GustoEmbedded::Shared::ContractorBankAccount)
          res.contractor_bank_account = out
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
  end
end
