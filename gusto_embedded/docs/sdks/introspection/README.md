# Introspection

## Overview

### Available Operations

* [get_info](#get_info) - Get info about the current access token
* [oauth_access_token](#oauth_access_token) - Create a System Access Token or Refresh an Access Token

## get_info

Returns scope and resource information associated with the current access token. Use this endpoint to verify the following for the current access token:
* Resource (company, employee, contractor, or application) and resource owner
* Access level

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-token-info" method="get" path="/v1/token_info" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.introspection.get_info(x_gusto_api_version: Models::Operations::XGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.token_info.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::XGustoAPIVersion)](../../models/operations/xgustoapiversion.md)                                                                                                                               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1TokenInfoResponse)](../../models/operations/getv1tokeninforesponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## oauth_access_token

Creates a system access token or refreshes an oauth access token

### Example Usage

<!-- UsageSnippet language="ruby" operationID="oauth-access-token" method="post" path="/oauth/token" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.introspection.oauth_access_token(request_body: Models::Operations::SystemAccessTokenRequest.new(
  client_id: 'qr6L_9FRkbMVL_GdwvrMW6Ef8tcU6NUxjWpOfqXqOG8',
  client_secret: '3aQSHRB3596nZhm6NdNBELZ1u9xbZmvCrKpBhbZYq6w',
  grant_type: Models::Operations::RequestBodyGrantType::SYSTEM_ACCESS
), x_gusto_api_version: Models::Operations::HeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.authentication.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request_body`                                                                                                                                                                                                               | [T.any(Models::Operations::RefreshTokenRequest, Models::Operations::SystemAccessTokenRequest)](../../models/operations/oauthaccesstokenrequestbody.md)                                                                       | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::HeaderXGustoAPIVersion)](../../models/operations/headerxgustoapiversion.md)                                                                                                                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::OauthAccessTokenResponse)](../../models/operations/oauthaccesstokenresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |