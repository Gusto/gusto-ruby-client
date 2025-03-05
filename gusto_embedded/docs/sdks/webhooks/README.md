# Webhooks
(*webhooks*)

## Overview

### Available Operations

* [create_subscription](#create_subscription) - Create a webhook subscription
* [list_subscriptions](#list_subscriptions) - List webhook subscriptions
* [update_subscription](#update_subscription) - Update a webhook subscription
* [get_subscription](#get_subscription) - Get a webhook subscription
* [delete_subscription](#delete_subscription) - Delete a webhook subscription
* [verify](#verify) - Verify the webhook subscription
* [request_verification_token](#request_verification_token) - Request the webhook subscription verification_token

## create_subscription

Create a webhook subscription to receive events of the specified subscription_types whenever there is a state change.

> 📘 System Access Authentication
>
> This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access).

scope: `webhook_subscriptions:write`

### Example Usage

```ruby
require 'gusto_embedded_client'


s = ::GustoEmbedded::Client.new

    
res = s.webhooks.create_subscription(::GustoEmbedded::Operations::PostV1WebhookSubscriptionSecurity.new(
    system_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  ), request_body=::GustoEmbedded::Operations::PostV1WebhookSubscriptionRequestBody.new(
  url: "https://dense-bidet.name/",
  subscription_types: [
    ::GustoEmbedded::Operations::SubscriptionTypes::EMPLOYEE,
  ],
), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.webhook_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [::GustoEmbedded::Operations::PostV1WebhookSubscriptionSecurity](../../models/operations/postv1webhooksubscriptionsecurity.md)                                                                                               | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PostV1WebhookSubscriptionRequestBody](../../models/operations/postv1webhooksubscriptionrequestbody.md)                                                                                         | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PostV1WebhookSubscriptionResponse)](../../models/operations/postv1webhooksubscriptionresponse.md)**



## list_subscriptions

Returns all webhook subscriptions associated with the provided Partner API token.

> 📘 System Access Authentication
>
> This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access).

scope: `webhook_subscriptions:read`

### Example Usage

```ruby
require 'gusto_embedded_client'


s = ::GustoEmbedded::Client.new

    
res = s.webhooks.list_subscriptions(::GustoEmbedded::Operations::GetV1WebhookSubscriptionsSecurity.new(
    system_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  ), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.webhook_subscriptions_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [::GustoEmbedded::Operations::GetV1WebhookSubscriptionsSecurity](../../models/operations/getv1webhooksubscriptionssecurity.md)                                                                                               | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1WebhookSubscriptionsResponse)](../../models/operations/getv1webhooksubscriptionsresponse.md)**



## update_subscription

Updates the Webhook Subscription associated with the provided UUID.

> 📘 System Access Authentication
>
> This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access).

scope: `webhook_subscriptions:write`


### Example Usage

```ruby
require 'gusto_embedded_client'


s = ::GustoEmbedded::Client.new

    
res = s.webhooks.update_subscription(::GustoEmbedded::Operations::PutV1WebhookSubscriptionUuidSecurity.new(
    system_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  ), webhook_subscription_uuid="<id>", request_body=::GustoEmbedded::Operations::PutV1WebhookSubscriptionUuidRequestBody.new(
  subscription_types: [
    ::GustoEmbedded::Operations::PutV1WebhookSubscriptionUuidSubscriptionTypes::PAY_SCHEDULE,
  ],
), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.webhook_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [::GustoEmbedded::Operations::PutV1WebhookSubscriptionUuidSecurity](../../models/operations/putv1webhooksubscriptionuuidsecurity.md)                                                                                         | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `webhook_subscription_uuid`                                                                                                                                                                                                  | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The webhook subscription UUID.                                                                                                                                                                                               |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PutV1WebhookSubscriptionUuidRequestBody](../../models/operations/putv1webhooksubscriptionuuidrequestbody.md)                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PutV1WebhookSubscriptionUuidResponse)](../../models/operations/putv1webhooksubscriptionuuidresponse.md)**



## get_subscription

Returns the Webhook Subscription associated with the provided UUID.

> 📘 System Access Authentication
>
> This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access).

scope: `webhook_subscriptions:read`


### Example Usage

```ruby
require 'gusto_embedded_client'


s = ::GustoEmbedded::Client.new

    
res = s.webhooks.get_subscription(::GustoEmbedded::Operations::GetV1WebhookSubscriptionUuidSecurity.new(
    system_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  ), webhook_subscription_uuid="<id>", x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.webhook_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [::GustoEmbedded::Operations::GetV1WebhookSubscriptionUuidSecurity](../../models/operations/getv1webhooksubscriptionuuidsecurity.md)                                                                                         | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `webhook_subscription_uuid`                                                                                                                                                                                                  | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The webhook subscription UUID.                                                                                                                                                                                               |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1WebhookSubscriptionUuidResponse)](../../models/operations/getv1webhooksubscriptionuuidresponse.md)**



## delete_subscription

Deletes the Webhook Subscription associated with the provided UUID.

> 📘 System Access Authentication
>
> This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access).

scope: `webhook_subscriptions:write`


### Example Usage

```ruby
require 'gusto_embedded_client'


s = ::GustoEmbedded::Client.new

    
res = s.webhooks.delete_subscription(::GustoEmbedded::Operations::DeleteV1WebhookSubscriptionUuidSecurity.new(
    system_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  ), webhook_subscription_uuid="<id>", x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [::GustoEmbedded::Operations::DeleteV1WebhookSubscriptionUuidSecurity](../../models/operations/deletev1webhooksubscriptionuuidsecurity.md)                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `webhook_subscription_uuid`                                                                                                                                                                                                  | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The webhook subscription UUID.                                                                                                                                                                                               |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::DeleteV1WebhookSubscriptionUuidResponse)](../../models/operations/deletev1webhooksubscriptionuuidresponse.md)**



## verify

When a webhook subscription is created, a `verification_token` is POSTed to the registered webhook subscription URL. This `verify` endpoint needs to be called with `verification_token` before webhook events can be sent to the registered webhook URL.

Use the /v1/webhook_subscriptions/{webhook_subscription_uuid}/request_verification_token API to resend the `verification_token` to the Subscriber.

> 📘 System Access Authentication
>
> This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access).

scope: `webhook_subscriptions:write`


### Example Usage

```ruby
require 'gusto_embedded_client'


s = ::GustoEmbedded::Client.new

    
res = s.webhooks.verify(::GustoEmbedded::Operations::PutV1VerifyWebhookSubscriptionUuidSecurity.new(
    system_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  ), webhook_subscription_uuid="<id>", request_body=::GustoEmbedded::Operations::PutV1VerifyWebhookSubscriptionUuidRequestBody.new(
  verification_token: "<value>",
), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.webhook_subscription.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [::GustoEmbedded::Operations::PutV1VerifyWebhookSubscriptionUuidSecurity](../../models/operations/putv1verifywebhooksubscriptionuuidsecurity.md)                                                                             | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `webhook_subscription_uuid`                                                                                                                                                                                                  | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The webhook subscription UUID.                                                                                                                                                                                               |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PutV1VerifyWebhookSubscriptionUuidRequestBody](../../models/operations/putv1verifywebhooksubscriptionuuidrequestbody.md)                                                                       | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PutV1VerifyWebhookSubscriptionUuidResponse)](../../models/operations/putv1verifywebhooksubscriptionuuidresponse.md)**



## request_verification_token

Request that the webhook subscription `verification_token` be POSTed to the Subscription URL.

> 📘 System Access Authentication
>
> This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access).

scope: `webhook_subscriptions:read`


### Example Usage

```ruby
require 'gusto_embedded_client'


s = ::GustoEmbedded::Client.new

    
res = s.webhooks.request_verification_token(::GustoEmbedded::Operations::GetV1WebhookSubscriptionVerificationTokenUuidSecurity.new(
    system_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  ), webhook_subscription_uuid="<id>", x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [::GustoEmbedded::Operations::GetV1WebhookSubscriptionVerificationTokenUuidSecurity](../../models/operations/getv1webhooksubscriptionverificationtokenuuidsecurity.md)                                                       | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `webhook_subscription_uuid`                                                                                                                                                                                                  | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The webhook subscription UUID.                                                                                                                                                                                               |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1WebhookSubscriptionVerificationTokenUuidResponse)](../../models/operations/getv1webhooksubscriptionverificationtokenuuidresponse.md)**

