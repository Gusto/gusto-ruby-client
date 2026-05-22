# TimeOffRequests

## Overview

### Available Operations

* [post_v1_companies_company_uuid_time_off_admin_approved_requests](#post_v1_companies_company_uuid_time_off_admin_approved_requests) - Create an admin-approved time off request
* [get_v1_companies_company_uuid_time_off_balances](#get_v1_companies_company_uuid_time_off_balances) - Get time off balances for a company
* [get_v1_companies_company_uuid_time_off_requests](#get_v1_companies_company_uuid_time_off_requests) - List time off requests for a company
* [post_v1_companies_company_uuid_time_off_requests](#post_v1_companies_company_uuid_time_off_requests) - Create a time off request
* [post_v1_companies_company_uuid_time_off_requests_preview](#post_v1_companies_company_uuid_time_off_requests_preview) - Preview a time off request
* [get_v1_time_off_requests_time_off_request_uuid](#get_v1_time_off_requests_time_off_request_uuid) - Get a time off request
* [delete_v1_time_off_requests_time_off_request_uuid](#delete_v1_time_off_requests_time_off_request_uuid) - Delete a time off request
* [put_v1_time_off_requests_time_off_request_uuid_approve](#put_v1_time_off_requests_time_off_request_uuid_approve) - Approve a time off request
* [put_v1_time_off_requests_time_off_request_uuid_decline](#put_v1_time_off_requests_time_off_request_uuid_decline) - Decline a time off request

## post_v1_companies_company_uuid_time_off_admin_approved_requests

Create a pre-approved time off request on behalf of an employee (admin or system initiated).
The request is always created with approved status.

scope: `time_off_requests:manage`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-companies-company_uuid-time_off-admin_approved_requests" method="post" path="/v1/companies/{company_uuid}/time_off/admin_approved_requests" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.time_off_requests.post_v1_companies_company_uuid_time_off_admin_approved_requests(company_uuid: '<id>', body: Models::Operations::PostV1CompaniesCompanyUuidTimeOffAdminApprovedRequestsRequestBody.new(
  employee_uuid: '<id>',
  policy_uuid: '<id>',
  start_date: '<value>',
  end_date: '<value>',
  days: {
    'key' => '<value>',
    'key1' => '<value>',
    'key2' => '<value>',
  }
), x_gusto_api_version: Models::Operations::PostV1CompaniesCompanyUuidTimeOffAdminApprovedRequestsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.embedded_time_off_request.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `body`                                                                                                                                                                                                                       | [Models::Operations::PostV1CompaniesCompanyUuidTimeOffAdminApprovedRequestsRequestBody](../../models/operations/postv1companiescompanyuuidtimeoffadminapprovedrequestsrequestbody.md)                                        | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1CompaniesCompanyUuidTimeOffAdminApprovedRequestsHeaderXGustoAPIVersion)](../../models/operations/postv1companiescompanyuuidtimeoffadminapprovedrequestsheaderxgustoapiversion.md)       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompaniesCompanyUuidTimeOffAdminApprovedRequestsResponse)](../../models/operations/postv1companiescompanyuuidtimeoffadminapprovedrequestsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## get_v1_companies_company_uuid_time_off_balances

Get time off balances for all employees in a company

scope: `time_off_requests:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_uuid-time_off-balances" method="get" path="/v1/companies/{company_uuid}/time_off/balances" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)

req = Models::Operations::GetV1CompaniesCompanyUuidTimeOffBalancesRequest.new(
  company_uuid: '<id>'
)
res = s.time_off_requests.get_v1_companies_company_uuid_time_off_balances(request: req)

unless res.embedded_time_off_balances.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                         | [Models::Operations::GetV1CompaniesCompanyUuidTimeOffBalancesRequest](../../models/operations/getv1companiescompanyuuidtimeoffbalancesrequest.md) | :heavy_check_mark:                                                                                                                                | The request object to use for the request.                                                                                                        |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyUuidTimeOffBalancesResponse)](../../models/operations/getv1companiescompanyuuidtimeoffbalancesresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## get_v1_companies_company_uuid_time_off_requests

Get all time off requests for a company. Supports filtering by status, employee, and date ranges.

Possible statuses:
- `pending` — awaiting approval
- `approved` — approved by an admin but not yet processed in a payroll
- `declined` — declined by an admin
- `consumed` — processed in a completed payroll

Allowed values for `status`: pending, approved, declined, consumed.

scope: `time_off_requests:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_uuid-time_off-requests" method="get" path="/v1/companies/{company_uuid}/time_off/requests" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)

req = Models::Operations::GetV1CompaniesCompanyUuidTimeOffRequestsRequest.new(
  company_uuid: '<id>'
)
res = s.time_off_requests.get_v1_companies_company_uuid_time_off_requests(request: req)

unless res.embedded_time_off_requests.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                         | [Models::Operations::GetV1CompaniesCompanyUuidTimeOffRequestsRequest](../../models/operations/getv1companiescompanyuuidtimeoffrequestsrequest.md) | :heavy_check_mark:                                                                                                                                | The request object to use for the request.                                                                                                        |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyUuidTimeOffRequestsResponse)](../../models/operations/getv1companiescompanyuuidtimeoffrequestsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## post_v1_companies_company_uuid_time_off_requests

Create a time off request for an employee

scope: `time_off_requests:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-companies-company_uuid-time_off-requests" method="post" path="/v1/companies/{company_uuid}/time_off/requests" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.time_off_requests.post_v1_companies_company_uuid_time_off_requests(company_uuid: '<id>', body: Models::Operations::PostV1CompaniesCompanyUuidTimeOffRequestsRequestBody.new(
  employee_uuid: '<id>',
  policy_uuid: '<id>',
  start_date: '<value>',
  end_date: '<value>',
  days: {
    'key' => '<value>',
    'key1' => '<value>',
    'key2' => '<value>',
  }
), x_gusto_api_version: Models::Operations::PostV1CompaniesCompanyUuidTimeOffRequestsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.embedded_time_off_request.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `body`                                                                                                                                                                                                                       | [Models::Operations::PostV1CompaniesCompanyUuidTimeOffRequestsRequestBody](../../models/operations/postv1companiescompanyuuidtimeoffrequestsrequestbody.md)                                                                  | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1CompaniesCompanyUuidTimeOffRequestsHeaderXGustoAPIVersion)](../../models/operations/postv1companiescompanyuuidtimeoffrequestsheaderxgustoapiversion.md)                                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompaniesCompanyUuidTimeOffRequestsResponse)](../../models/operations/postv1companiescompanyuuidtimeoffrequestsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## post_v1_companies_company_uuid_time_off_requests_preview

Preview a time off request to see balance impact before creating

scope: `time_off_requests:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-companies-company_uuid-time_off-requests-preview" method="post" path="/v1/companies/{company_uuid}/time_off/requests/preview" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.time_off_requests.post_v1_companies_company_uuid_time_off_requests_preview(company_uuid: '<id>', body: Models::Operations::PostV1CompaniesCompanyUuidTimeOffRequestsPreviewRequestBody.new(
  employee_uuid: '<id>',
  policy_uuid: '<id>',
  start_date: '<value>',
  end_date: '<value>',
  days: {
    'key' => '<value>',
    'key1' => '<value>',
    'key2' => '<value>',
  }
), x_gusto_api_version: Models::Operations::PostV1CompaniesCompanyUuidTimeOffRequestsPreviewHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.embedded_time_off_request_preview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `body`                                                                                                                                                                                                                       | [Models::Operations::PostV1CompaniesCompanyUuidTimeOffRequestsPreviewRequestBody](../../models/operations/postv1companiescompanyuuidtimeoffrequestspreviewrequestbody.md)                                                    | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1CompaniesCompanyUuidTimeOffRequestsPreviewHeaderXGustoAPIVersion)](../../models/operations/postv1companiescompanyuuidtimeoffrequestspreviewheaderxgustoapiversion.md)                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompaniesCompanyUuidTimeOffRequestsPreviewResponse)](../../models/operations/postv1companiescompanyuuidtimeoffrequestspreviewresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## get_v1_time_off_requests_time_off_request_uuid

Get a single time off request by UUID

scope: `time_off_requests:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-time_off-requests-time_off_request_uuid" method="get" path="/v1/time_off/requests/{time_off_request_uuid}" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.time_off_requests.get_v1_time_off_requests_time_off_request_uuid(time_off_request_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1TimeOffRequestsTimeOffRequestUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.embedded_time_off_request.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `time_off_request_uuid`                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the time off request                                                                                                                                                                                             |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1TimeOffRequestsTimeOffRequestUuidHeaderXGustoAPIVersion)](../../models/operations/getv1timeoffrequeststimeoffrequestuuidheaderxgustoapiversion.md)                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1TimeOffRequestsTimeOffRequestUuidResponse)](../../models/operations/getv1timeoffrequeststimeoffrequestuuidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## delete_v1_time_off_requests_time_off_request_uuid

Delete a time off request

scope: `time_off_requests:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-time_off-requests-time_off_request_uuid" method="delete" path="/v1/time_off/requests/{time_off_request_uuid}" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.time_off_requests.delete_v1_time_off_requests_time_off_request_uuid(time_off_request_uuid: '<id>', x_gusto_api_version: Models::Operations::DeleteV1TimeOffRequestsTimeOffRequestUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `time_off_request_uuid`                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the time off request                                                                                                                                                                                             |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::DeleteV1TimeOffRequestsTimeOffRequestUuidHeaderXGustoAPIVersion)](../../models/operations/deletev1timeoffrequeststimeoffrequestuuidheaderxgustoapiversion.md)                                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1TimeOffRequestsTimeOffRequestUuidResponse)](../../models/operations/deletev1timeoffrequeststimeoffrequestuuidresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## put_v1_time_off_requests_time_off_request_uuid_approve

Approve a pending time off request. Optionally override the dates and hours.

Only requests with a `pending` status can be approved. Attempting to approve a request that has already been `declined` or `consumed` will fail with a 422 error.

scope: `time_off_requests:manage`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-time_off-requests-time_off_request_uuid-approve" method="put" path="/v1/time_off/requests/{time_off_request_uuid}/approve" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.time_off_requests.put_v1_time_off_requests_time_off_request_uuid_approve(time_off_request_uuid: '<id>', x_gusto_api_version: Models::Operations::PutV1TimeOffRequestsTimeOffRequestUuidApproveHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.embedded_time_off_request.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `time_off_request_uuid`                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the time off request                                                                                                                                                                                             |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1TimeOffRequestsTimeOffRequestUuidApproveHeaderXGustoAPIVersion)](../../models/operations/putv1timeoffrequeststimeoffrequestuuidapproveheaderxgustoapiversion.md)                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `body`                                                                                                                                                                                                                       | [T.nilable(Models::Operations::PutV1TimeOffRequestsTimeOffRequestUuidApproveRequestBody)](../../models/operations/putv1timeoffrequeststimeoffrequestuuidapproverequestbody.md)                                               | :heavy_minus_sign:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |

### Response

**[T.nilable(Models::Operations::PutV1TimeOffRequestsTimeOffRequestUuidApproveResponse)](../../models/operations/putv1timeoffrequeststimeoffrequestuuidapproveresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## put_v1_time_off_requests_time_off_request_uuid_decline

Decline a pending or approved time off request. Requires an employer_note.

scope: `time_off_requests:manage`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-time_off-requests-time_off_request_uuid-decline" method="put" path="/v1/time_off/requests/{time_off_request_uuid}/decline" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.time_off_requests.put_v1_time_off_requests_time_off_request_uuid_decline(time_off_request_uuid: '<id>', body: Models::Operations::PutV1TimeOffRequestsTimeOffRequestUuidDeclineRequestBody.new(
  employer_note: '<value>'
), x_gusto_api_version: Models::Operations::PutV1TimeOffRequestsTimeOffRequestUuidDeclineHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.embedded_time_off_request.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `time_off_request_uuid`                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the time off request                                                                                                                                                                                             |
| `body`                                                                                                                                                                                                                       | [Models::Operations::PutV1TimeOffRequestsTimeOffRequestUuidDeclineRequestBody](../../models/operations/putv1timeoffrequeststimeoffrequestuuiddeclinerequestbody.md)                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1TimeOffRequestsTimeOffRequestUuidDeclineHeaderXGustoAPIVersion)](../../models/operations/putv1timeoffrequeststimeoffrequestuuiddeclineheaderxgustoapiversion.md)                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1TimeOffRequestsTimeOffRequestUuidDeclineResponse)](../../models/operations/putv1timeoffrequeststimeoffrequestuuiddeclineresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |