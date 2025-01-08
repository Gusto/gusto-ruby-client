# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class AchTransactions
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(request: T.nilable(::OpenApiSDK::Operations::GetAchTransactionsRequest)).returns(::OpenApiSDK::Operations::GetAchTransactionsResponse) }
    def get_all(request)
      # get_all - Get all ACH transactions for a company
      # Fetches all ACH transactions for a company.
      # 
      # scope: `ach_transactions:read`
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetAchTransactionsRequest,
        base_url,
        '/v1/companies/{company_uuid}/ach_transactions',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetAchTransactionsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetAchTransactionsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Shared::AchTransaction])
          res.ach_transaction_list = out
        end
      elsif r.status == 404
      end

      res
    end
  end
end
