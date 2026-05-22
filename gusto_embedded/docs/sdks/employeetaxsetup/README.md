# EmployeeTaxSetup

## Overview

### Available Operations

* [get_federal_taxes](#get_federal_taxes) - Get federal taxes for an employee
* [update_federal_taxes](#update_federal_taxes) - Update federal taxes for an employee
* [get_state_taxes](#get_state_taxes) - Get an employee's state taxes
* [update_state_taxes](#update_state_taxes) - Update an employee's state taxes

## get_federal_taxes

Returns federal tax information for an employee. The response structure varies based on the w4_data_type (pre_2020_w4 or rev_2020_w4).

scope: `employee_federal_taxes:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employees-employee_id-federal_taxes" method="get" path="/v1/employees/{employee_uuid}/federal_taxes" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_tax_setup.get_federal_taxes(employee_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1EmployeesEmployeeIdFederalTaxesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.employee_federal_tax.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_uuid`                                                                                                                                                                                                              | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1EmployeesEmployeeIdFederalTaxesHeaderXGustoAPIVersion)](../../models/operations/getv1employeesemployeeidfederaltaxesheaderxgustoapiversion.md)                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1EmployeesEmployeeIdFederalTaxesResponse)](../../models/operations/getv1employeesemployeeidfederaltaxesresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## update_federal_taxes

Updates federal tax (W4) information for an employee. Only rev_2020_w4 format is accepted for updates.

scope: `employee_federal_taxes:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-employees-employee_id-federal_taxes" method="put" path="/v1/employees/{employee_uuid}/federal_taxes" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_tax_setup.update_federal_taxes(employee_uuid: '<id>', request_body: Models::Operations::PutV1EmployeesEmployeeIdFederalTaxesRequestBody.new(
  version: '56a489ce86ed6c1b0f0cecc4050a0b01',
  w4_data_type: Models::Operations::W4DataType::REV_2020_W4,
  filing_status: Models::Operations::FilingStatus::SINGLE
), x_gusto_api_version: Models::Operations::PutV1EmployeesEmployeeIdFederalTaxesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.employee_federal_tax.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_uuid`                                                                                                                                                                                                              | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1EmployeesEmployeeIdFederalTaxesRequestBody](../../models/operations/putv1employeesemployeeidfederaltaxesrequestbody.md)                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1EmployeesEmployeeIdFederalTaxesHeaderXGustoAPIVersion)](../../models/operations/putv1employeesemployeeidfederaltaxesheaderxgustoapiversion.md)                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1EmployeesEmployeeIdFederalTaxesResponse)](../../models/operations/putv1employeesemployeeidfederaltaxesresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 409, 422                                 | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_state_taxes

Get attributes relevant for an employee's state taxes.

The data required to correctly calculate an employee's state taxes varies by both home and work location. This API returns information about each question that must be answered grouped by state. Mostly commonly, an employee lives and works in the same state and will only have questions for a single state. The response contains metadata about each question, the type of answer expected, and the current answer stored in Gusto for that question.

Answers are represented by an array. Today, this array can only be empty or contain exactly one element, but is designed to allow for forward compatibility with effective-dated fields. The `valid_from` and `valid_up_to` fields are optional and currently ignored.

## About filing new hire reports
Payroll Admins are responsible for filing a new hire report for each Employee. The `file_new_hire_report` question will only be listed if:
- the `employee.onboarding_status` is one of the following:
  - `admin_onboarding_incomplete`
  - `self_onboarding_awaiting_admin_review`
- that employee's work state requires filing a new hire report

scope: `employee_state_taxes:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employees-employee_id-state_taxes" method="get" path="/v1/employees/{employee_uuid}/state_taxes" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_tax_setup.get_state_taxes(employee_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1EmployeesEmployeeIdStateTaxesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.employee_state_taxes_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_uuid`                                                                                                                                                                                                              | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1EmployeesEmployeeIdStateTaxesHeaderXGustoAPIVersion)](../../models/operations/getv1employeesemployeeidstatetaxesheaderxgustoapiversion.md)                                               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1EmployeesEmployeeIdStateTaxesResponse)](../../models/operations/getv1employeesemployeeidstatetaxesresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## update_state_taxes

Update attributes relevant for an employee's state taxes.

As described for the GET endpoint, the answers must be supplied in the effective-dated format, but currently only a single answer will be accepted. The `valid_from` and `valid_up_to` fields are optional and currently ignored.

scope: `employee_state_taxes:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-employees-employee_id-state_taxes" method="put" path="/v1/employees/{employee_uuid}/state_taxes" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_tax_setup.update_state_taxes(employee_uuid: '<id>', employee_state_taxes_request: Models::Shared::EmployeeStateTaxesRequest.new(
  states: []
), x_gusto_api_version: Models::Operations::PutV1EmployeesEmployeeIdStateTaxesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.employee_state_taxes_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_uuid`                                                                                                                                                                                                              | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `employee_state_taxes_request`                                                                                                                                                                                               | [Models::Shared::EmployeeStateTaxesRequest](../../models/shared/employeestatetaxesrequest.md)                                                                                                                                | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1EmployeesEmployeeIdStateTaxesHeaderXGustoAPIVersion)](../../models/operations/putv1employeesemployeeidstatetaxesheaderxgustoapiversion.md)                                               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1EmployeesEmployeeIdStateTaxesResponse)](../../models/operations/putv1employeesemployeeidstatetaxesresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |