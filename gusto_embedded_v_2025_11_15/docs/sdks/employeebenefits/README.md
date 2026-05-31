# EmployeeBenefits

## Overview

### Available Operations

* [get](#get) - Get all benefits for an employee
* [create](#create) - Create an employee benefit
* [retrieve](#retrieve) - Get an employee benefit
* [update](#update) - Update an employee benefit
* [delete](#delete) - Delete an employee benefit
* [get_ytd_benefit_amounts_from_different_company](#get_ytd_benefit_amounts_from_different_company) - Get year-to-date benefit amounts from a different company
* [create_ytd_benefit_amounts_from_different_company](#create_ytd_benefit_amounts_from_different_company) - Create year-to-date benefit amounts from a different company
* [get_v1_employees_employee_uuid_section603_high_earner_statuses](#get_v1_employees_employee_uuid_section603_high_earner_statuses) - Get all Section 603 high earner statuses for an employee
* [post_v1_employees_employee_uuid_section603_high_earner_statuses](#post_v1_employees_employee_uuid_section603_high_earner_statuses) - Create a Section 603 high earner status
* [get_v1_employees_employee_uuid_section603_high_earner_statuses_effective_year](#get_v1_employees_employee_uuid_section603_high_earner_statuses_effective_year) - Get a Section 603 high earner status for a specific year
* [patch_v1_employees_employee_uuid_section603_high_earner_statuses_effective_year](#patch_v1_employees_employee_uuid_section603_high_earner_statuses_effective_year) - Update a Section 603 high earner status

## get

Employee benefits represent an employee enrolled in a particular company benefit. It includes information specific to that employee’s enrollment.

Returns an array of all employee benefits for this employee

Benefits containing PHI are only visible to applications with the `employee_benefits:read:phi` scope.

scope: `employee_benefits:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employees-employee_id-employee_benefits" method="get" path="/v1/employees/{employee_id}/employee_benefits" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)

req = Models::Operations::GetV1EmployeesEmployeeIdEmployeeBenefitsRequest.new(
  employee_id: '<id>'
)
res = s.employee_benefits.get(request: req)

unless res.employee_benefits.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                         | [Models::Operations::GetV1EmployeesEmployeeIdEmployeeBenefitsRequest](../../models/operations/getv1employeesemployeeidemployeebenefitsrequest.md) | :heavy_check_mark:                                                                                                                                | The request object to use for the request.                                                                                                        |

### Response

**[T.nilable(Models::Operations::GetV1EmployeesEmployeeIdEmployeeBenefitsResponse)](../../models/operations/getv1employeesemployeeidemployeebenefitsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## create

Employee benefits represent an employee enrolled in a particular company benefit. It includes information specific to that employee's enrollment.

When the application has the `employee_benefits:write:benefit_type_limited` data scope, the application can only create employee benefits for benefit types that are permitted for the application.

scope: `employee_benefits:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-employees-employee_id-employee_benefits" method="post" path="/v1/employees/{employee_id}/employee_benefits" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_benefits.create(employee_id: '<id>', body: Models::Shared::EmployeeBenefitCreateRequest.new(
  company_benefit_uuid: '<id>'
), x_gusto_api_version: Models::Operations::PostV1EmployeesEmployeeIdEmployeeBenefitsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.employee_benefit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `body`                                                                                                                                                                                                                       | [Models::Shared::EmployeeBenefitCreateRequest](../../models/shared/employeebenefitcreaterequest.md)                                                                                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1EmployeesEmployeeIdEmployeeBenefitsHeaderXGustoAPIVersion)](../../models/operations/postv1employeesemployeeidemployeebenefitsheaderxgustoapiversion.md)                                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1EmployeesEmployeeIdEmployeeBenefitsResponse)](../../models/operations/postv1employeesemployeeidemployeebenefitsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## retrieve

Employee benefits represent an employee enrolled in a particular company benefit. It includes information specific to that employee’s enrollment.

Benefits containing PHI are only visible to applications with the `employee_benefits:read:phi` scope.

scope: `employee_benefits:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employee_benefits-employee_benefit_id" method="get" path="/v1/employee_benefits/{employee_benefit_id}" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_benefits.retrieve(employee_benefit_id: '<id>', x_gusto_api_version: Models::Operations::GetV1EmployeeBenefitsEmployeeBenefitIdHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.employee_benefit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_benefit_id`                                                                                                                                                                                                        | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee benefit.                                                                                                                                                                                            |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1EmployeeBenefitsEmployeeBenefitIdHeaderXGustoAPIVersion)](../../models/operations/getv1employeebenefitsemployeebenefitidheaderxgustoapiversion.md)                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1EmployeeBenefitsEmployeeBenefitIdResponse)](../../models/operations/getv1employeebenefitsemployeebenefitidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## update

Employee benefits represent an employee enrolled in a particular company benefit. It includes information specific to that employee's enrollment.

When the application has the `employee_benefits:write:benefit_type_limited` data scope, the application can only update employee benefits for benefit types that are permitted for the application.

scope: `employee_benefits:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-employee_benefits-employee_benefit_id" method="put" path="/v1/employee_benefits/{employee_benefit_id}" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_benefits.update(employee_benefit_id: '<id>', body: Models::Shared::EmployeeBenefitUpdateRequest.new(
  version: '<value>'
), x_gusto_api_version: Models::Operations::PutV1EmployeeBenefitsEmployeeBenefitIdHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.employee_benefit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_benefit_id`                                                                                                                                                                                                        | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee benefit.                                                                                                                                                                                            |
| `body`                                                                                                                                                                                                                       | [Models::Shared::EmployeeBenefitUpdateRequest](../../models/shared/employeebenefitupdaterequest.md)                                                                                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1EmployeeBenefitsEmployeeBenefitIdHeaderXGustoAPIVersion)](../../models/operations/putv1employeebenefitsemployeebenefitidheaderxgustoapiversion.md)                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1EmployeeBenefitsEmployeeBenefitIdResponse)](../../models/operations/putv1employeebenefitsemployeebenefitidresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## delete

Employee benefits represent an employee enrolled in a particular company benefit. It includes information specific to that employee's enrollment.

When the application has the `employee_benefits:write:benefit_type_limited` data scope, the application can only delete employee benefits for benefit types that are permitted for the application.

scope: `employee_benefits:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-employee_benefits-employee_benefit_id" method="delete" path="/v1/employee_benefits/{employee_benefit_id}" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_benefits.delete(employee_benefit_id: '<id>', x_gusto_api_version: Models::Operations::DeleteV1EmployeeBenefitsEmployeeBenefitIdHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_benefit_id`                                                                                                                                                                                                        | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee benefit.                                                                                                                                                                                            |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::DeleteV1EmployeeBenefitsEmployeeBenefitIdHeaderXGustoAPIVersion)](../../models/operations/deletev1employeebenefitsemployeebenefitidheaderxgustoapiversion.md)                                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1EmployeeBenefitsEmployeeBenefitIdResponse)](../../models/operations/deletev1employeebenefitsemployeebenefitidresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_ytd_benefit_amounts_from_different_company

Retrieves year-to-date benefit amounts that were contributed at a different company for the specified employee.
Returns benefit amounts for the requested tax year (defaults to current year if not specified).

This endpoint only supports retrieving outside contributions for 401(k) benefits.

scope: `employee_benefits:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-employee-ytd-benefit-amounts-from-different-company" method="get" path="/v1/employees/{employee_id}/ytd_benefit_amounts_from_different_company" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_benefits.get_ytd_benefit_amounts_from_different_company(employee_id: '<id>', x_gusto_api_version: Models::Operations::GetEmployeeYtdBenefitAmountsFromDifferentCompanyHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15, tax_year: 2024)

unless res.ytd_benefit_amounts_from_different_companies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  | Example                                                                                                                                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |                                                                                                                                                                                                                              |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetEmployeeYtdBenefitAmountsFromDifferentCompanyHeaderXGustoAPIVersion)](../../models/operations/getemployeeytdbenefitamountsfromdifferentcompanyheaderxgustoapiversion.md)                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |                                                                                                                                                                                                                              |
| `tax_year`                                                                                                                                                                                                                   | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | The tax year for which to retrieve YTD benefit amounts. Defaults to current year if not specified.                                                                                                                           | 2024                                                                                                                                                                                                                         |

### Response

**[T.nilable(Models::Operations::GetEmployeeYtdBenefitAmountsFromDifferentCompanyResponse)](../../models/operations/getemployeeytdbenefitamountsfromdifferentcompanyresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## create_ytd_benefit_amounts_from_different_company

Year-to-date benefit amounts from a different company represents the amount of money added to an employee's plan during a current year, made outside of the current contribution when they were employed at a different company.

This endpoint only supports passing outside contributions for 401(k) benefits.

scope: `employee_benefits:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-employee-ytd-benefit-amounts-from-different-company" method="post" path="/v1/employees/{employee_id}/ytd_benefit_amounts_from_different_company" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_benefits.create_ytd_benefit_amounts_from_different_company(employee_id: '<id>', body: Models::Shared::YtdBenefitAmountsFromDifferentCompanyBody.new(
  benefit_type: 182_856,
  tax_year: 6006.73
), x_gusto_api_version: Models::Operations::PostEmployeeYtdBenefitAmountsFromDifferentCompanyHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `body`                                                                                                                                                                                                                       | [Models::Shared::YtdBenefitAmountsFromDifferentCompanyBody](../../models/shared/ytdbenefitamountsfromdifferentcompanybody.md)                                                                                                | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostEmployeeYtdBenefitAmountsFromDifferentCompanyHeaderXGustoAPIVersion)](../../models/operations/postemployeeytdbenefitamountsfromdifferentcompanyheaderxgustoapiversion.md)                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostEmployeeYtdBenefitAmountsFromDifferentCompanyResponse)](../../models/operations/postemployeeytdbenefitamountsfromdifferentcompanyresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_v1_employees_employee_uuid_section603_high_earner_statuses

Get all Section 603 high earner statuses for an employee across all years.

Section 603 of the SECURE 2.0 Act applies to employees aged 50 or older whose prior-year FICA wages exceed the IRS threshold.
These employees are classified as high earners, and their catch-up contributions to pre-tax retirement benefits must be designated as post-tax contributions.

scope: `employee_benefits:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employees-employee_uuid-section603_high_earner_statuses" method="get" path="/v1/employees/{employee_uuid}/section603_high_earner_statuses" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_benefits.get_v1_employees_employee_uuid_section603_high_earner_statuses(employee_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1EmployeesEmployeeUuidSection603HighEarnerStatusesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.employee_section603_high_earner_status_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_uuid`                                                                                                                                                                                                              | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1EmployeesEmployeeUuidSection603HighEarnerStatusesHeaderXGustoAPIVersion)](../../models/operations/getv1employeesemployeeuuidsection603highearnerstatusesheaderxgustoapiversion.md)       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1EmployeesEmployeeUuidSection603HighEarnerStatusesResponse)](../../models/operations/getv1employeesemployeeuuidsection603highearnerstatusesresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## post_v1_employees_employee_uuid_section603_high_earner_statuses

Create a Section 603 high earner status for an employee for a specific year.

Section 603 of the SECURE 2.0 Act applies to employees aged 50 or older whose prior-year FICA wages exceed the IRS threshold.
These employees are classified as high earners, and their catch-up contributions to pre-tax retirement benefits must be designated as post-tax contributions.

scope: `employee_benefits:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-employees-employee_uuid-section603_high_earner_statuses" method="post" path="/v1/employees/{employee_uuid}/section603_high_earner_statuses" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_benefits.post_v1_employees_employee_uuid_section603_high_earner_statuses(employee_uuid: '<id>', body: Models::Shared::EmployeeSection603HighEarnerStatusCreateRequest.new(
  effective_year: 2026,
  is_high_earner: true
), x_gusto_api_version: Models::Operations::PostV1EmployeesEmployeeUuidSection603HighEarnerStatusesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.employee_section603_high_earner_status.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_uuid`                                                                                                                                                                                                              | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `body`                                                                                                                                                                                                                       | [Models::Shared::EmployeeSection603HighEarnerStatusCreateRequest](../../models/shared/employeesection603highearnerstatuscreaterequest.md)                                                                                    | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1EmployeesEmployeeUuidSection603HighEarnerStatusesHeaderXGustoAPIVersion)](../../models/operations/postv1employeesemployeeuuidsection603highearnerstatusesheaderxgustoapiversion.md)     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1EmployeesEmployeeUuidSection603HighEarnerStatusesResponse)](../../models/operations/postv1employeesemployeeuuidsection603highearnerstatusesresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 409, 422                                 | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_v1_employees_employee_uuid_section603_high_earner_statuses_effective_year

Get a Section 603 high earner status for an employee for a specific year.

Section 603 of the SECURE 2.0 Act applies to employees aged 50 or older whose prior-year FICA wages exceed the IRS threshold.
These employees are classified as high earners, and their catch-up contributions to pre-tax retirement benefits must be designated as post-tax contributions.

scope: `employee_benefits:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employees-employee_uuid-section603_high_earner_statuses-effective_year" method="get" path="/v1/employees/{employee_uuid}/section603_high_earner_statuses/{effective_year}" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_benefits.get_v1_employees_employee_uuid_section603_high_earner_statuses_effective_year(employee_uuid: '<id>', effective_year: 857_230, x_gusto_api_version: Models::Operations::GetV1EmployeesEmployeeUuidSection603HighEarnerStatusesEffectiveYearHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.employee_section603_high_earner_status.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                               | Type                                                                                                                                                                                                                                    | Required                                                                                                                                                                                                                                | Description                                                                                                                                                                                                                             |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_uuid`                                                                                                                                                                                                                         | *::String*                                                                                                                                                                                                                              | :heavy_check_mark:                                                                                                                                                                                                                      | The UUID of the employee                                                                                                                                                                                                                |
| `effective_year`                                                                                                                                                                                                                        | *::Integer*                                                                                                                                                                                                                             | :heavy_check_mark:                                                                                                                                                                                                                      | The effective year for the Section 603 status                                                                                                                                                                                           |
| `x_gusto_api_version`                                                                                                                                                                                                                   | [T.nilable(Models::Operations::GetV1EmployeesEmployeeUuidSection603HighEarnerStatusesEffectiveYearHeaderXGustoAPIVersion)](../../models/operations/getv1employeesemployeeuuidsection603highearnerstatuseseffectiveyearheader_982d0a.md) | :heavy_minus_sign:                                                                                                                                                                                                                      | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.            |

### Response

**[T.nilable(Models::Operations::GetV1EmployeesEmployeeUuidSection603HighEarnerStatusesEffectiveYearResponse)](../../models/operations/getv1employeesemployeeuuidsection603highearnerstatuseseffectiveyearresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## patch_v1_employees_employee_uuid_section603_high_earner_statuses_effective_year

Update a Section 603 high earner status for an employee for a specific year.

Section 603 of the SECURE 2.0 Act applies to employees aged 50 or older whose prior-year FICA wages exceed the IRS threshold.
These employees are classified as high earners, and their catch-up contributions to pre-tax retirement benefits must be designated as post-tax contributions.

scope: `employee_benefits:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="patch-v1-employees-employee_uuid-section603_high_earner_statuses-effective_year" method="patch" path="/v1/employees/{employee_uuid}/section603_high_earner_statuses/{effective_year}" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_benefits.patch_v1_employees_employee_uuid_section603_high_earner_statuses_effective_year(employee_uuid: '<id>', effective_year: 152_322, body: Models::Shared::EmployeeSection603HighEarnerStatusUpdateRequest.new(
  is_high_earner: true
), x_gusto_api_version: Models::Operations::PatchV1EmployeesEmployeeUuidSection603HighEarnerStatusesEffectiveYearHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.employee_section603_high_earner_status.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                 | Type                                                                                                                                                                                                                                      | Required                                                                                                                                                                                                                                  | Description                                                                                                                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_uuid`                                                                                                                                                                                                                           | *::String*                                                                                                                                                                                                                                | :heavy_check_mark:                                                                                                                                                                                                                        | The UUID of the employee                                                                                                                                                                                                                  |
| `effective_year`                                                                                                                                                                                                                          | *::Integer*                                                                                                                                                                                                                               | :heavy_check_mark:                                                                                                                                                                                                                        | The effective year for the Section 603 status                                                                                                                                                                                             |
| `body`                                                                                                                                                                                                                                    | [Models::Shared::EmployeeSection603HighEarnerStatusUpdateRequest](../../models/shared/employeesection603highearnerstatusupdaterequest.md)                                                                                                 | :heavy_check_mark:                                                                                                                                                                                                                        | N/A                                                                                                                                                                                                                                       |
| `x_gusto_api_version`                                                                                                                                                                                                                     | [T.nilable(Models::Operations::PatchV1EmployeesEmployeeUuidSection603HighEarnerStatusesEffectiveYearHeaderXGustoAPIVersion)](../../models/operations/patchv1employeesemployeeuuidsection603highearnerstatuseseffectiveyearhead_5f262c.md) | :heavy_minus_sign:                                                                                                                                                                                                                        | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.              |

### Response

**[T.nilable(Models::Operations::PatchV1EmployeesEmployeeUuidSection603HighEarnerStatusesEffectiveYearResponse)](../../models/operations/patchv1employeesemployeeuuidsection603highearnerstatuseseffectiveyearresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |