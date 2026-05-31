# InformationRequests

## Overview

### Available Operations

* [get_information_requests](#get_information_requests) - Get all information requests for a company
* [submit](#submit) - Submit information request responses

## get_information_requests

Fetch all information requests for a company.

scope: `information_requests:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-information-requests" method="get" path="/v1/companies/{company_uuid}/information_requests" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.information_requests.get_information_requests(company_uuid: '<id>', x_gusto_api_version: Models::Operations::GetInformationRequestsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15, sort_by: 'payroll_blocker:asc')

unless res.information_requests.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  | Example                                                                                                                                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |                                                                                                                                                                                                                              |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetInformationRequestsHeaderXGustoAPIVersion)](../../models/operations/getinformationrequestsheaderxgustoapiversion.md)                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |                                                                                                                                                                                                                              |
| `sort_by`                                                                                                                                                                                                                    | *T.nilable(::String)*                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                           | Sort by one or more fields. Options: payroll_blocker, status, type. Append `:asc` or `:desc` to specify direction (e.g., `payroll_blocker:asc`). Defaults to ascending.                                                      | payroll_blocker:asc                                                                                                                                                                                                          |

### Response

**[T.nilable(Models::Operations::GetInformationRequestsResponse)](../../models/operations/getinformationrequestsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## submit

Submit responses to an information request.
Supports both text responses and file uploads (multipart/form-data).
Maximum file size: 120MB.

scope: `information_requests:write`

### Example Usage: Basic

<!-- UsageSnippet language="ruby" operationID="submit-information-request" method="put" path="/v1/information_requests/{information_request_uuid}/submit" example="Basic" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.information_requests.submit(information_request_uuid: '<id>', request_body: Models::Operations::SubmitInformationRequestRequestBody.new)

unless res.information_request.nil?
  # handle response
end

```
### Example Usage: Nested

<!-- UsageSnippet language="ruby" operationID="submit-information-request" method="put" path="/v1/information_requests/{information_request_uuid}/submit" example="Nested" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.information_requests.submit(information_request_uuid: '<id>', request_body: Models::Operations::SubmitInformationRequestRequestBody.new)

unless res.information_request.nil?
  # handle response
end

```
### Example Usage: Resource

<!-- UsageSnippet language="ruby" operationID="submit-information-request" method="put" path="/v1/information_requests/{information_request_uuid}/submit" example="Resource" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.information_requests.submit(information_request_uuid: '<id>', request_body: Models::Operations::SubmitInformationRequestRequestBody.new)

unless res.information_request.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                 | Type                                                                                                                      | Required                                                                                                                  | Description                                                                                                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `information_request_uuid`                                                                                                | *::String*                                                                                                                | :heavy_check_mark:                                                                                                        | The UUID of the information request                                                                                       |
| `request_body`                                                                                                            | [Models::Operations::SubmitInformationRequestRequestBody](../../models/operations/submitinformationrequestrequestbody.md) | :heavy_check_mark:                                                                                                        | N/A                                                                                                                       |

### Response

**[T.nilable(Models::Operations::SubmitInformationRequestResponse)](../../models/operations/submitinformationrequestresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |