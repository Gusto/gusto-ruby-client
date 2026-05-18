# Webhooks

## Overview

### Available Operations

* [list_subscriptions](#list_subscriptions) - List webhook subscriptions
* [create_subscription](#create_subscription) - Create a webhook subscription
* [get_subscription](#get_subscription) - Get a webhook subscription
* [update_subscription](#update_subscription) - Update a webhook subscription
* [delete_subscription](#delete_subscription) - Delete a webhook subscription
* [verify](#verify) - Verify a webhook subscription
* [request_verification_token](#request_verification_token) - Request a verification token for a webhook subscription
* [get_v1_webhooks_health_check](#get_v1_webhooks_health_check) - Get the webhooks health status

## list_subscriptions

Returns all webhook subscriptions associated with the provided Partner API token.

📘 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `webhook_subscriptions:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-webhook-subscriptions" method="get" path="/v1/webhook_subscriptions" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.webhooks.list_subscriptions(security: Models::Operations::GetV1WebhookSubscriptionsSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
), x_gusto_api_version: Models::Operations::GetV1WebhookSubscriptionsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.webhook_subscriptions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [Models::Operations::GetV1WebhookSubscriptionsSecurity](../../models/operations/getv1webhooksubscriptionssecurity.md)                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1WebhookSubscriptionsHeaderXGustoAPIVersion)](../../models/operations/getv1webhooksubscriptionsheaderxgustoapiversion.md)                                                                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1WebhookSubscriptionsResponse)](../../models/operations/getv1webhooksubscriptionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create_subscription

Create a webhook subscription to receive events of the specified subscription_types whenever there is a state change.

📘 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `webhook_subscriptions:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-webhook-subscription" method="post" path="/v1/webhook_subscriptions" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.webhooks.create_subscription(security: Models::Operations::PostV1WebhookSubscriptionSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
), request_body: Models::Operations::PostV1WebhookSubscriptionRequestBody.new(
  url: 'https://slow-median.com',
  subscription_types: [
    Models::Operations::SubscriptionTypes::NOTIFICATION,
  ]
), x_gusto_api_version: Models::Operations::PostV1WebhookSubscriptionHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.webhook_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [Models::Operations::PostV1WebhookSubscriptionSecurity](../../models/operations/postv1webhooksubscriptionsecurity.md)                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostV1WebhookSubscriptionRequestBody](../../models/operations/postv1webhooksubscriptionrequestbody.md)                                                                                                  | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1WebhookSubscriptionHeaderXGustoAPIVersion)](../../models/operations/postv1webhooksubscriptionheaderxgustoapiversion.md)                                                                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1WebhookSubscriptionResponse)](../../models/operations/postv1webhooksubscriptionresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_subscription

Returns the Webhook Subscription associated with the provided UUID.

📘 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `webhook_subscriptions:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-webhook-subscription-uuid" method="get" path="/v1/webhook_subscriptions/{webhook_subscription_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.webhooks.get_subscription(security: Models::Operations::GetV1WebhookSubscriptionUuidSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
), webhook_subscription_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1WebhookSubscriptionUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.webhook_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [Models::Operations::GetV1WebhookSubscriptionUuidSecurity](../../models/operations/getv1webhooksubscriptionuuidsecurity.md)                                                                                                  | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `webhook_subscription_uuid`                                                                                                                                                                                                  | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The webhook subscription UUID.                                                                                                                                                                                               |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1WebhookSubscriptionUuidHeaderXGustoAPIVersion)](../../models/operations/getv1webhooksubscriptionuuidheaderxgustoapiversion.md)                                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1WebhookSubscriptionUuidResponse)](../../models/operations/getv1webhooksubscriptionuuidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## update_subscription

Updates the Webhook Subscription associated with the provided UUID.

📘 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `webhook_subscriptions:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-webhook-subscription-uuid" method="put" path="/v1/webhook_subscriptions/{webhook_subscription_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.webhooks.update_subscription(security: Models::Operations::PutV1WebhookSubscriptionUuidSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
), webhook_subscription_uuid: '<id>', request_body: Models::Operations::PutV1WebhookSubscriptionUuidRequestBody.new(
  subscription_types: [
    Models::Operations::PutV1WebhookSubscriptionUuidSubscriptionTypes::PAY_SCHEDULE,
  ]
), x_gusto_api_version: Models::Operations::PutV1WebhookSubscriptionUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.webhook_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [Models::Operations::PutV1WebhookSubscriptionUuidSecurity](../../models/operations/putv1webhooksubscriptionuuidsecurity.md)                                                                                                  | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `webhook_subscription_uuid`                                                                                                                                                                                                  | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The webhook subscription UUID.                                                                                                                                                                                               |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1WebhookSubscriptionUuidRequestBody](../../models/operations/putv1webhooksubscriptionuuidrequestbody.md)                                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1WebhookSubscriptionUuidHeaderXGustoAPIVersion)](../../models/operations/putv1webhooksubscriptionuuidheaderxgustoapiversion.md)                                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1WebhookSubscriptionUuidResponse)](../../models/operations/putv1webhooksubscriptionuuidresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## delete_subscription

Deletes the Webhook Subscription associated with the provided UUID.

📘 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `webhook_subscriptions:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-webhook-subscription-uuid" method="delete" path="/v1/webhook_subscriptions/{webhook_subscription_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.webhooks.delete_subscription(security: Models::Operations::DeleteV1WebhookSubscriptionUuidSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
), webhook_subscription_uuid: '<id>', x_gusto_api_version: Models::Operations::DeleteV1WebhookSubscriptionUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [Models::Operations::DeleteV1WebhookSubscriptionUuidSecurity](../../models/operations/deletev1webhooksubscriptionuuidsecurity.md)                                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `webhook_subscription_uuid`                                                                                                                                                                                                  | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The webhook subscription UUID.                                                                                                                                                                                               |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::DeleteV1WebhookSubscriptionUuidHeaderXGustoAPIVersion)](../../models/operations/deletev1webhooksubscriptionuuidheaderxgustoapiversion.md)                                                     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1WebhookSubscriptionUuidResponse)](../../models/operations/deletev1webhooksubscriptionuuidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## verify

When a webhook subscription is created, a `verification_token` is POSTed to the registered webhook subscription URL. This `verify` endpoint needs to be called with `verification_token` before webhook events can be sent to the registered webhook URL.

Use the /v1/webhook_subscriptions/{webhook_subscription_uuid}/request_verification_token API to resend the `verification_token` to the Subscriber.

📘 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `webhook_subscriptions:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-verify-webhook-subscription-uuid" method="put" path="/v1/webhook_subscriptions/{webhook_subscription_uuid}/verify" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.webhooks.verify(security: Models::Operations::PutV1VerifyWebhookSubscriptionUuidSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
), webhook_subscription_uuid: '<id>', request_body: Models::Operations::PutV1VerifyWebhookSubscriptionUuidRequestBody.new(
  verification_token: '<value>'
), x_gusto_api_version: Models::Operations::PutV1VerifyWebhookSubscriptionUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.webhook_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [Models::Operations::PutV1VerifyWebhookSubscriptionUuidSecurity](../../models/operations/putv1verifywebhooksubscriptionuuidsecurity.md)                                                                                      | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `webhook_subscription_uuid`                                                                                                                                                                                                  | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The webhook subscription UUID.                                                                                                                                                                                               |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1VerifyWebhookSubscriptionUuidRequestBody](../../models/operations/putv1verifywebhooksubscriptionuuidrequestbody.md)                                                                                | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1VerifyWebhookSubscriptionUuidHeaderXGustoAPIVersion)](../../models/operations/putv1verifywebhooksubscriptionuuidheaderxgustoapiversion.md)                                               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1VerifyWebhookSubscriptionUuidResponse)](../../models/operations/putv1verifywebhooksubscriptionuuidresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## request_verification_token

Request that the webhook subscription `verification_token` be POSTed to the Subscription URL.

📘 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `webhook_subscriptions:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-webhook-subscription-verification-token-uuid" method="get" path="/v1/webhook_subscriptions/{webhook_subscription_uuid}/request_verification_token" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.webhooks.request_verification_token(security: Models::Operations::GetV1WebhookSubscriptionVerificationTokenUuidSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
), webhook_subscription_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1WebhookSubscriptionVerificationTokenUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.webhook_verification_token_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [Models::Operations::GetV1WebhookSubscriptionVerificationTokenUuidSecurity](../../models/operations/getv1webhooksubscriptionverificationtokenuuidsecurity.md)                                                                | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `webhook_subscription_uuid`                                                                                                                                                                                                  | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The webhook subscription UUID.                                                                                                                                                                                               |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1WebhookSubscriptionVerificationTokenUuidHeaderXGustoAPIVersion)](../../models/operations/getv1webhooksubscriptionverificationtokenuuidheaderxgustoapiversion.md)                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1WebhookSubscriptionVerificationTokenUuidResponse)](../../models/operations/getv1webhooksubscriptionverificationtokenuuidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## get_v1_webhooks_health_check

Returns the health status (`healthy`, `unhealthy`, or `unknown`) of the webhooks system based on the last ten minutes of activity.

📘 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `webhook_subscriptions:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-webhooks-health_check" method="get" path="/v1/webhooks/health_check" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.webhooks.get_v1_webhooks_health_check(security: Models::Operations::GetV1WebhooksHealthCheckSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
), x_gusto_api_version: Models::Operations::GetV1WebhooksHealthCheckHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.webhooks_health_check_status.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [Models::Operations::GetV1WebhooksHealthCheckSecurity](../../models/operations/getv1webhookshealthchecksecurity.md)                                                                                                          | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1WebhooksHealthCheckHeaderXGustoAPIVersion)](../../models/operations/getv1webhookshealthcheckheaderxgustoapiversion.md)                                                                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1WebhooksHealthCheckResponse)](../../models/operations/getv1webhookshealthcheckresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |