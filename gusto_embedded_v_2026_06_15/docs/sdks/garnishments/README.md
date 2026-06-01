# Garnishments

## Overview

### Available Operations

* [list](#list) - Get garnishments for an employee
* [create](#create) - Create a garnishment
* [get_child_support_data](#get_child_support_data) - Get child support garnishment data
* [get](#get) - Get a garnishment
* [update](#update) - Update a garnishment

## list

Garnishments, or employee deductions, are fixed amounts or percentages deducted from an employee’s pay. They can be deducted a specific number of times or on a recurring basis. Garnishments can also have maximum deductions on a yearly or per-pay-period bases. Common uses for garnishments are court-ordered payments for child support or back taxes. Some companies provide loans to their employees that are repaid via garnishments.

scope: `garnishments:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employees-employee_id-garnishments" method="get" path="/v1/employees/{employee_id}/garnishments" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.garnishments.list(employee_id: '<id>', x_gusto_api_version: Models::Operations::GetV1EmployeesEmployeeIdGarnishmentsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.garnishments.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1EmployeesEmployeeIdGarnishmentsHeaderXGustoAPIVersion)](../../models/operations/getv1employeesemployeeidgarnishmentsheaderxgustoapiversion.md)                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `page`                                                                                                                                                                                                                       | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | The page that is requested. When unspecified, will load all objects unless endpoint forces pagination.                                                                                                                       |
| `per`                                                                                                                                                                                                                        | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Number of objects per page. For majority of endpoints will default to 25                                                                                                                                                     |

### Response

**[T.nilable(Models::Operations::GetV1EmployeesEmployeeIdGarnishmentsResponse)](../../models/operations/getv1employeesemployeeidgarnishmentsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## create

Garnishments, or employee deductions, are fixed amounts or percentages deducted from an employee’s pay. They can be deducted a specific number of times or on a recurring basis. Garnishments can also have maximum deductions on a yearly or per-pay-period bases. Common uses for garnishments are court-ordered payments for child support or back taxes. Some companies provide loans to their employees that are repaid via garnishments.

scope: `garnishments:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-employees-employee_id-garnishments" method="post" path="/v1/employees/{employee_id}/garnishments" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.garnishments.create(employee_id: '<id>', garnishment_request: Models::Shared::GarnishmentRequest.new(
  amount: '<value>',
  court_ordered: false
), x_gusto_api_version: Models::Operations::PostV1EmployeesEmployeeIdGarnishmentsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.garnishment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `garnishment_request`                                                                                                                                                                                                        | [Models::Shared::GarnishmentRequest](../../models/shared/garnishmentrequest.md)                                                                                                                                              | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1EmployeesEmployeeIdGarnishmentsHeaderXGustoAPIVersion)](../../models/operations/postv1employeesemployeeidgarnishmentsheaderxgustoapiversion.md)                                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1EmployeesEmployeeIdGarnishmentsResponse)](../../models/operations/postv1employeesemployeeidgarnishmentsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_child_support_data

Agency data and requirements to be used for creating child support garnishments

scope: `garnishments:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-garnishments-child_support" method="get" path="/v1/garnishments/child_support" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.garnishments.get_child_support_data(x_gusto_api_version: Models::Operations::GetV1GarnishmentsChildSupportHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.child_support_data.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1GarnishmentsChildSupportHeaderXGustoAPIVersion)](../../models/operations/getv1garnishmentschildsupportheaderxgustoapiversion.md)                                                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1GarnishmentsChildSupportResponse)](../../models/operations/getv1garnishmentschildsupportresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get

Garnishments, or employee deductions, are fixed amounts or percentages deducted from an employee’s pay. They can be deducted a specific number of times or on a recurring basis. Garnishments can also have maximum deductions on a yearly or per-pay-period bases. Common uses for garnishments are court-ordered payments for child support or back taxes. Some companies provide loans to their employees that are repaid via garnishments.

scope: `garnishments:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-garnishments-garnishment_id" method="get" path="/v1/garnishments/{garnishment_id}" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.garnishments.get(garnishment_id: '<id>', x_gusto_api_version: Models::Operations::GetV1GarnishmentsGarnishmentIdHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.garnishment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `garnishment_id`                                                                                                                                                                                                             | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the garnishment                                                                                                                                                                                                  |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1GarnishmentsGarnishmentIdHeaderXGustoAPIVersion)](../../models/operations/getv1garnishmentsgarnishmentidheaderxgustoapiversion.md)                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1GarnishmentsGarnishmentIdResponse)](../../models/operations/getv1garnishmentsgarnishmentidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## update

Garnishments, or employee deductions, are fixed amounts or percentages deducted from an employee’s pay. They can be deducted a specific number of times or on a recurring basis. Garnishments can also have maximum deductions on a yearly or per-pay-period bases. Common uses for garnishments are court-ordered payments for child support or back taxes. Some companies provide loans to their employees that are repaid via garnishments.

scope: `garnishments:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-garnishments-garnishment_id" method="put" path="/v1/garnishments/{garnishment_id}" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.garnishments.update(garnishment_id: '<id>', update_garnishment_request: Models::Shared::UpdateGarnishmentRequest.new(
  version: '56d00c178bc7393b2a206ed6a86afcb4'
), x_gusto_api_version: Models::Operations::PutV1GarnishmentsGarnishmentIdHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.garnishment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `garnishment_id`                                                                                                                                                                                                             | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the garnishment                                                                                                                                                                                                  |
| `update_garnishment_request`                                                                                                                                                                                                 | [Models::Shared::UpdateGarnishmentRequest](../../models/shared/updategarnishmentrequest.md)                                                                                                                                  | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1GarnishmentsGarnishmentIdHeaderXGustoAPIVersion)](../../models/operations/putv1garnishmentsgarnishmentidheaderxgustoapiversion.md)                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1GarnishmentsGarnishmentIdResponse)](../../models/operations/putv1garnishmentsgarnishmentidresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |