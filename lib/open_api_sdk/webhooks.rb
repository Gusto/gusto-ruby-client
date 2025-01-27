# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Webhooks
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(security: ::OpenApiSDK::Operations::PostV1WebhookSubscriptionSecurity, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader), request_body: T.nilable(::OpenApiSDK::Operations::PostV1WebhookSubscriptionRequestBody)).returns(::OpenApiSDK::Operations::PostV1WebhookSubscriptionResponse) }
    def create(security, x_gusto_api_version = nil, request_body = nil)
      # create - Create a webhook subscription
      # Create a webhook subscription to receive events of the specified subscription_types whenever there is a state change.
      # 
      # > 📘 System Access Authentication
      # >
      # > This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access).
      # 
      # scope: `webhook_subscriptions:write`
      request = ::OpenApiSDK::Operations::PostV1WebhookSubscriptionRequest.new(
        
        x_gusto_api_version: x_gusto_api_version,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/webhook_subscriptions"
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
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

      res = ::OpenApiSDK::Operations::PostV1WebhookSubscriptionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::WebhookSubscription)
          res.webhook_subscription = out
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


    sig { params(security: ::OpenApiSDK::Operations::GetV1WebhookSubscriptionsSecurity, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1WebhookSubscriptionsResponse) }
    def list_subscriptions(security, x_gusto_api_version = nil)
      # list_subscriptions - List webhook subscriptions
      # Returns all webhook subscriptions associated with the provided Partner API token.
      # 
      # > 📘 System Access Authentication
      # >
      # > This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access).
      # 
      # scope: `webhook_subscriptions:read`
      request = ::OpenApiSDK::Operations::GetV1WebhookSubscriptionsRequest.new(
        
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/v1/webhook_subscriptions"
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetV1WebhookSubscriptionsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::OpenApiSDK::Shared::WebhookSubscription])
          res.webhook_subscriptions_list = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(security: ::OpenApiSDK::Operations::PutV1WebhookSubscriptionUuidSecurity, webhook_subscription_uuid: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader), request_body: T.nilable(::OpenApiSDK::Operations::PutV1WebhookSubscriptionUuidRequestBody)).returns(::OpenApiSDK::Operations::PutV1WebhookSubscriptionUuidResponse) }
    def update_subscription(security, webhook_subscription_uuid, x_gusto_api_version = nil, request_body = nil)
      # update_subscription - Update a webhook subscription
      # Updates the Webhook Subscription associated with the provided UUID.
      # 
      # > 📘 System Access Authentication
      # >
      # > This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access).
      # 
      # scope: `webhook_subscriptions:write`
      # 
      request = ::OpenApiSDK::Operations::PutV1WebhookSubscriptionUuidRequest.new(
        
        webhook_subscription_uuid: webhook_subscription_uuid,
        x_gusto_api_version: x_gusto_api_version,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::PutV1WebhookSubscriptionUuidRequest,
        base_url,
        '/v1/webhook_subscriptions/{webhook_subscription_uuid}',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
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

      res = ::OpenApiSDK::Operations::PutV1WebhookSubscriptionUuidResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::WebhookSubscription)
          res.webhook_subscription = out
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


    sig { params(security: ::OpenApiSDK::Operations::GetV1WebhookSubscriptionUuidSecurity, webhook_subscription_uuid: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1WebhookSubscriptionUuidResponse) }
    def get_subscription(security, webhook_subscription_uuid, x_gusto_api_version = nil)
      # get_subscription - Get a webhook subscription
      # Returns the Webhook Subscription associated with the provided UUID.
      # 
      # > 📘 System Access Authentication
      # >
      # > This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access).
      # 
      # scope: `webhook_subscriptions:read`
      # 
      request = ::OpenApiSDK::Operations::GetV1WebhookSubscriptionUuidRequest.new(
        
        webhook_subscription_uuid: webhook_subscription_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1WebhookSubscriptionUuidRequest,
        base_url,
        '/v1/webhook_subscriptions/{webhook_subscription_uuid}',
        request
      )
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetV1WebhookSubscriptionUuidResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::WebhookSubscription)
          res.webhook_subscription = out
        end
      elsif r.status == 404
      end

      res
    end


    sig { params(security: ::OpenApiSDK::Operations::DeleteV1WebhookSubscriptionUuidSecurity, webhook_subscription_uuid: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::DeleteV1WebhookSubscriptionUuidResponse) }
    def delete(security, webhook_subscription_uuid, x_gusto_api_version = nil)
      # delete - Delete a webhook subscription
      # Deletes the Webhook Subscription associated with the provided UUID.
      # 
      # > 📘 System Access Authentication
      # >
      # > This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access).
      # 
      # scope: `webhook_subscriptions:write`
      # 
      request = ::OpenApiSDK::Operations::DeleteV1WebhookSubscriptionUuidRequest.new(
        
        webhook_subscription_uuid: webhook_subscription_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::DeleteV1WebhookSubscriptionUuidRequest,
        base_url,
        '/v1/webhook_subscriptions/{webhook_subscription_uuid}',
        request
      )
      headers = Utils.get_headers(request)
      headers['Accept'] = '*/*'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::DeleteV1WebhookSubscriptionUuidResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      elsif r.status == 404
      end

      res
    end


    sig { params(security: ::OpenApiSDK::Operations::PutV1VerifyWebhookSubscriptionUuidSecurity, webhook_subscription_uuid: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader), request_body: T.nilable(::OpenApiSDK::Operations::PutV1VerifyWebhookSubscriptionUuidRequestBody)).returns(::OpenApiSDK::Operations::PutV1VerifyWebhookSubscriptionUuidResponse) }
    def verify(security, webhook_subscription_uuid, x_gusto_api_version = nil, request_body = nil)
      # verify - Verify the webhook subscription
      # When a webhook subscription is created, a `verification_token` is POSTed to the registered webhook subscription URL. This `verify` endpoint needs to be called with `verification_token` before webhook events can be sent to the registered webhook URL.
      # 
      # Use the /v1/webhook_subscriptions/{webhook_subscription_uuid}/request_verification_token API to resend the `verification_token` to the Subscriber.
      # 
      # > 📘 System Access Authentication
      # >
      # > This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access).
      # 
      # scope: `webhook_subscriptions:write`
      # 
      request = ::OpenApiSDK::Operations::PutV1VerifyWebhookSubscriptionUuidRequest.new(
        
        webhook_subscription_uuid: webhook_subscription_uuid,
        x_gusto_api_version: x_gusto_api_version,
        request_body: request_body
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::PutV1VerifyWebhookSubscriptionUuidRequest,
        base_url,
        '/v1/webhook_subscriptions/{webhook_subscription_uuid}/verify',
        request
      )
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :json)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
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

      res = ::OpenApiSDK::Operations::PutV1VerifyWebhookSubscriptionUuidResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::WebhookSubscription)
          res.webhook_subscription = out
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


    sig { params(security: ::OpenApiSDK::Operations::GetV1WebhookSubscriptionVerificationTokenUuidSecurity, webhook_subscription_uuid: ::String, x_gusto_api_version: T.nilable(::OpenApiSDK::Shared::VersionHeader)).returns(::OpenApiSDK::Operations::GetV1WebhookSubscriptionVerificationTokenUuidResponse) }
    def request_verification_token(security, webhook_subscription_uuid, x_gusto_api_version = nil)
      # request_verification_token - Request the webhook subscription verification_token
      # Request that the webhook subscription `verification_token` be POSTed to the Subscription URL.
      # 
      # > 📘 System Access Authentication
      # >
      # > This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access).
      # 
      # scope: `webhook_subscriptions:read`
      # 
      request = ::OpenApiSDK::Operations::GetV1WebhookSubscriptionVerificationTokenUuidRequest.new(
        
        webhook_subscription_uuid: webhook_subscription_uuid,
        x_gusto_api_version: x_gusto_api_version
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetV1WebhookSubscriptionVerificationTokenUuidRequest,
        base_url,
        '/v1/webhook_subscriptions/{webhook_subscription_uuid}/request_verification_token',
        request
      )
      headers = Utils.get_headers(request)
      headers['Accept'] = '*/*'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetV1WebhookSubscriptionVerificationTokenUuidResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 404
      end

      res
    end
  end
end
