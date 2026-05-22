# WireInRequests

## Overview

### Available Operations

* [get](#get) - Get a single Wire In Request
* [submit](#submit) - Submit a wire in request
* [list](#list) - Get all Wire In Requests for a company

## get

Fetch a Wire In Request.

scope: `payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-wire_in_requests-wire_in_request_uuid" method="get" path="/v1/wire_in_requests/{wire_in_request_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.wire_in_requests.get(wire_in_request_uuid: '<id>', x_gusto_api_version: Models::Operations::GetWireInRequestsWireInRequestUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.wire_in_request.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `wire_in_request_uuid`                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the Wire In Request                                                                                                                                                                                              |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetWireInRequestsWireInRequestUuidHeaderXGustoAPIVersion)](../../models/operations/getwireinrequestswireinrequestuuidheaderxgustoapiversion.md)                                               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetWireInRequestsWireInRequestUuidResponse)](../../models/operations/getwireinrequestswireinrequestuuidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## submit

Submit a wire in request for a payment

scope: `payrolls:run`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-wire_in_requests-wire_in_request_uuid" method="put" path="/v1/wire_in_requests/{wire_in_request_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.wire_in_requests.submit(wire_in_request_uuid: '<id>', wire_in_request_update_request_body: Models::Shared::WireInRequestUpdateRequestBody.new(
  date_sent: '2024-06-10',
  bank_name: 'Chase',
  amount_sent: '314500.00',
  additional_notes: 'Wire for 2024-06-15 payroll.'
), x_gusto_api_version: Models::Operations::PutWireInRequestsWireInRequestUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.wire_in_request.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `wire_in_request_uuid`                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the Wire In Request                                                                                                                                                                                              |
| `wire_in_request_update_request_body`                                                                                                                                                                                        | [Models::Shared::WireInRequestUpdateRequestBody](../../models/shared/wireinrequestupdaterequestbody.md)                                                                                                                      | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutWireInRequestsWireInRequestUuidHeaderXGustoAPIVersion)](../../models/operations/putwireinrequestswireinrequestuuidheaderxgustoapiversion.md)                                               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutWireInRequestsWireInRequestUuidResponse)](../../models/operations/putwireinrequestswireinrequestuuidresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## list

Fetches all Wire In Requests for a company.

scope: `payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-companies-company_uuid-wire_in_request_uuid" method="get" path="/v1/companies/{company_uuid}/wire_in_requests" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.wire_in_requests.list(company_uuid: '<id>', x_gusto_api_version: Models::Operations::GetCompaniesCompanyUuidWireInRequestUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.wire_in_request_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetCompaniesCompanyUuidWireInRequestUuidHeaderXGustoAPIVersion)](../../models/operations/getcompaniescompanyuuidwireinrequestuuidheaderxgustoapiversion.md)                                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `page`                                                                                                                                                                                                                       | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | The page that is requested. When unspecified, will load all objects unless endpoint forces pagination.                                                                                                                       |
| `per`                                                                                                                                                                                                                        | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Number of objects per page. For majority of endpoints will default to 25                                                                                                                                                     |

### Response

**[T.nilable(Models::Operations::GetCompaniesCompanyUuidWireInRequestUuidResponse)](../../models/operations/getcompaniescompanyuuidwireinrequestuuidresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |