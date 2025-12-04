# Reimbursements
(*reimbursements*)

## Overview

### Available Operations

* [get_v1_employees_employee_id_recurring_reimbursements](#get_v1_employees_employee_id_recurring_reimbursements) - Get recurring reimbursements for an employee
* [post_v1_employees_employee_id_recurring_reimbursements](#post_v1_employees_employee_id_recurring_reimbursements) - Create a recurring reimbursement
* [get_v1_recurring_reimbursements](#get_v1_recurring_reimbursements) - Get a recurring reimbursement
* [put_v1_recurring_reimbursements](#put_v1_recurring_reimbursements) - Update a recurring reimbursement
* [delete_v1_recurring_reimbursements](#delete_v1_recurring_reimbursements) - Delete a recurring reimbursement

## get_v1_employees_employee_id_recurring_reimbursements

Get all active recurring reimbursements for an employee.

scope: `reimbursements:read`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employees-employee_id-recurring_reimbursements" method="get" path="/v1/employees/{employee_id}/recurring_reimbursements" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.reimbursements.get_v1_employees_employee_id_recurring_reimbursements(employee_id: '<id>', x_gusto_api_version: Models::Operations::GetV1EmployeesEmployeeIdRecurringReimbursementsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_MINUS_04_MINUS_01)

unless res.response_bodies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1EmployeesEmployeeIdRecurringReimbursementsHeaderXGustoAPIVersion)](../../models/operations/getv1employeesemployeeidrecurringreimbursementsheaderxgustoapiversion.md)                     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `page`                                                                                                                                                                                                                       | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | The page that is requested. When unspecified, will load all objects unless endpoint forces pagination.                                                                                                                       |
| `per`                                                                                                                                                                                                                        | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Number of objects per page. For majority of endpoints will default to 25                                                                                                                                                     |

### Response

**[T.nilable(Models::Operations::GetV1EmployeesEmployeeIdRecurringReimbursementsResponse)](../../models/operations/getv1employeesemployeeidrecurringreimbursementsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 404                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## post_v1_employees_employee_id_recurring_reimbursements

Create a recurring reimbursement for an employee.

scope: `reimbursements:write`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-employees-employee_id-recurring_reimbursements" method="post" path="/v1/employees/{employee_id}/recurring_reimbursements" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.reimbursements.post_v1_employees_employee_id_recurring_reimbursements(employee_id: '<id>', request_body: Models::Operations::PostV1EmployeesEmployeeIdRecurringReimbursementsRequestBody.new(
  description: 'as procrastinate produce provided gracefully huzzah likewise when',
  amount: 2_610.77,
), x_gusto_api_version: Models::Operations::PostV1EmployeesEmployeeIdRecurringReimbursementsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_MINUS_04_MINUS_01)

unless res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostV1EmployeesEmployeeIdRecurringReimbursementsRequestBody](../../models/operations/postv1employeesemployeeidrecurringreimbursementsrequestbody.md)                                                    | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1EmployeesEmployeeIdRecurringReimbursementsHeaderXGustoAPIVersion)](../../models/operations/postv1employeesemployeeidrecurringreimbursementsheaderxgustoapiversion.md)                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1EmployeesEmployeeIdRecurringReimbursementsResponse)](../../models/operations/postv1employeesemployeeidrecurringreimbursementsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 404, 422                                       | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## get_v1_recurring_reimbursements

Get a specific recurring reimbursement.

scope: `reimbursements:read`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-recurring_reimbursements" method="get" path="/v1/recurring_reimbursements/{id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.reimbursements.get_v1_recurring_reimbursements(id: '<id>', x_gusto_api_version: Models::Operations::GetV1RecurringReimbursementsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_MINUS_04_MINUS_01)

unless res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `id`                                                                                                                                                                                                                         | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the reimbursement                                                                                                                                                                                                |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1RecurringReimbursementsHeaderXGustoAPIVersion)](../../models/operations/getv1recurringreimbursementsheaderxgustoapiversion.md)                                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1RecurringReimbursementsResponse)](../../models/operations/getv1recurringreimbursementsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 404                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## put_v1_recurring_reimbursements

Update a recurring reimbursement.

scope: `reimbursements:write`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-recurring_reimbursements" method="put" path="/v1/recurring_reimbursements/{id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.reimbursements.put_v1_recurring_reimbursements(id: '<id>', request_body: Models::Operations::PutV1RecurringReimbursementsRequestBody.new(
  version: '56d00c178bc7393b2a206ed6a86afcb4',
), x_gusto_api_version: Models::Operations::PutV1RecurringReimbursementsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_MINUS_04_MINUS_01)

unless res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `id`                                                                                                                                                                                                                         | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the reimbursement                                                                                                                                                                                                |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1RecurringReimbursementsRequestBody](../../models/operations/putv1recurringreimbursementsrequestbody.md)                                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1RecurringReimbursementsHeaderXGustoAPIVersion)](../../models/operations/putv1recurringreimbursementsheaderxgustoapiversion.md)                                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1RecurringReimbursementsResponse)](../../models/operations/putv1recurringreimbursementsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 404, 409, 422                                  | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## delete_v1_recurring_reimbursements

Delete (soft delete) a recurring reimbursement for an employee.

scope: `reimbursements:write`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-recurring_reimbursements" method="delete" path="/v1/recurring_reimbursements/{id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.reimbursements.delete_v1_recurring_reimbursements(id: '<id>', x_gusto_api_version: Models::Operations::DeleteV1RecurringReimbursementsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_MINUS_04_MINUS_01)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `id`                                                                                                                                                                                                                         | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the reimbursement                                                                                                                                                                                                |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::DeleteV1RecurringReimbursementsHeaderXGustoAPIVersion)](../../models/operations/deletev1recurringreimbursementsheaderxgustoapiversion.md)                                                     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1RecurringReimbursementsResponse)](../../models/operations/deletev1recurringreimbursementsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |