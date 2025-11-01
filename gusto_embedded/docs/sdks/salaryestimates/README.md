# SalaryEstimates
(*salary_estimates*)

## Overview

### Available Operations

* [post_v1_employees_employee_id_salary_estimates](#post_v1_employees_employee_id_salary_estimates) - Create a salary estimate for an employee
* [get_v1_salary_estimates_id](#get_v1_salary_estimates_id) - Get a salary estimate
* [put_v1_salary_estimates_id](#put_v1_salary_estimates_id) - Update a salary estimate
* [post_v1_salary_estimates_uuid_accept](#post_v1_salary_estimates_uuid_accept) - Accept a salary estimate
* [get_v1_salary_estimates_occupations](#get_v1_salary_estimates_occupations) - Search for BLS occupations

## post_v1_employees_employee_id_salary_estimates

Create a salary estimate for an employee. This endpoint helps calculate a reasonable salary for S Corp owners based on their occupation, experience level, location, and business revenue.

A salary estimate must include:
- Annual net revenue of the business
- ZIP code for location-based salary data
- One or more occupations with experience levels and time percentages (must sum to 100%)

Only one in-progress salary estimate can exist per employee at a time. If an in-progress estimate already exists, you must either accept it or use the update endpoint.

scope: `salary_estimates:write`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.salary_estimates.post_v1_employees_employee_id_salary_estimates(employee_id="<id>", request_body=::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdSalaryEstimatesRequestBody.new(
  annual_net_revenue: 500000.0,
  zip_code: "94107",
  occupations: [
    ::GustoEmbedded::Operations::Occupations.new(
      code: "151252",
      experience_level: ::GustoEmbedded::Operations::ExperienceLevel::SKILLED,
      time_percentage: "1",
      primary: true,
    ),
  ],
), x_gusto_api_version=::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdSalaryEstimatesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.salary_estimate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdSalaryEstimatesRequestBody](../../models/operations/postv1employeesemployeeidsalaryestimatesrequestbody.md)                                                           | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdSalaryEstimatesHeaderXGustoAPIVersion)](../../models/operations/postv1employeesemployeeidsalaryestimatesheaderxgustoapiversion.md)                          | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdSalaryEstimatesResponse)](../../models/operations/postv1employeesemployeeidsalaryestimatesresponse.md)**



## get_v1_salary_estimates_id

Retrieve a salary estimate by its UUID. Returns the estimated salary calculation along with all occupation details, revenue, and location information.

scope: `salary_estimates:read`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.salary_estimates.get_v1_salary_estimates_id(uuid="124a2266-2b98-4f99-8750-13e35729f25e", x_gusto_api_version=::GustoEmbedded::Operations::GetV1SalaryEstimatesIdHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.salary_estimate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `uuid`                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the salary estimate                                                                                                                                                                                              |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::GetV1SalaryEstimatesIdHeaderXGustoAPIVersion)](../../models/operations/getv1salaryestimatesidheaderxgustoapiversion.md)                                                              | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1SalaryEstimatesIdResponse)](../../models/operations/getv1salaryestimatesidresponse.md)**



## put_v1_salary_estimates_id

Update an existing salary estimate. You can modify the annual net revenue, ZIP code, and occupations.

The salary estimate must not be finalized (accepted). Once accepted, salary estimates become read-only for record-keeping purposes.

scope: `salary_estimates:write`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.salary_estimates.put_v1_salary_estimates_id(uuid="697ee261-b482-4d52-a98d-9499c008c381", request_body=::GustoEmbedded::Operations::PutV1SalaryEstimatesIdRequestBody.new(
  annual_net_revenue: 600000.0,
  zip_code: "94107",
  occupations: [
    ::GustoEmbedded::Operations::PutV1SalaryEstimatesIdOccupations.new(
      code: "151252",
      experience_level: ::GustoEmbedded::Operations::PutV1SalaryEstimatesIdExperienceLevel::EXPERT,
      time_percentage: "0.6",
      primary: true,
    ),
  ],
), x_gusto_api_version=::GustoEmbedded::Operations::PutV1SalaryEstimatesIdHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.salary_estimate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `uuid`                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the salary estimate                                                                                                                                                                                              |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PutV1SalaryEstimatesIdRequestBody](../../models/operations/putv1salaryestimatesidrequestbody.md)                                                                                               | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::PutV1SalaryEstimatesIdHeaderXGustoAPIVersion)](../../models/operations/putv1salaryestimatesidheaderxgustoapiversion.md)                                                              | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PutV1SalaryEstimatesIdResponse)](../../models/operations/putv1salaryestimatesidresponse.md)**



## post_v1_salary_estimates_uuid_accept

Accept and finalize a salary estimate. This associates the estimate with an employee job and marks it as accepted.

Once accepted, the salary estimate becomes read-only for record-keeping purposes. The accepted salary can then be used to set up compensation for the employee.

scope: `salary_estimates:write`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.salary_estimates.post_v1_salary_estimates_uuid_accept(uuid="095fb59e-be85-4c1d-903c-c0b2a2ec5ca4", request_body=::GustoEmbedded::Operations::PostV1SalaryEstimatesUuidAcceptRequestBody.new(
  employee_job_uuid: "7f5d3d93-6d6f-48c0-9f4e-cd12c2d3e4b2",
), x_gusto_api_version=::GustoEmbedded::Operations::PostV1SalaryEstimatesUuidAcceptHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.salary_estimate.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `uuid`                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the salary estimate                                                                                                                                                                                              |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PostV1SalaryEstimatesUuidAcceptRequestBody](../../models/operations/postv1salaryestimatesuuidacceptrequestbody.md)                                                                             | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::PostV1SalaryEstimatesUuidAcceptHeaderXGustoAPIVersion)](../../models/operations/postv1salaryestimatesuuidacceptheaderxgustoapiversion.md)                                            | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PostV1SalaryEstimatesUuidAcceptResponse)](../../models/operations/postv1salaryestimatesuuidacceptresponse.md)**



## get_v1_salary_estimates_occupations

Search for Bureau of Labor Statistics (BLS) occupations by name or keyword. This endpoint helps users find the appropriate occupation codes to use when creating or updating salary estimates.

Returns a list of matching occupations with their codes, titles, and descriptions.

U0001F4D8 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `salary_estimates:read`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new

res = s.salary_estimates.get_v1_salary_estimates_occupations(security: ::GustoEmbedded::Operations::GetV1SalaryEstimatesOccupationsSecurity.new(
    system_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  ), ::GustoEmbedded::Operations::GetV1SalaryEstimatesOccupationsSecurity.new(
    system_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  ), search="software", x_gusto_api_version=::GustoEmbedded::Operations::GetV1SalaryEstimatesOccupationsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.bls_occupations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  | Example                                                                                                                                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [::GustoEmbedded::Operations::GetV1SalaryEstimatesOccupationsSecurity](../../models/operations/getv1salaryestimatesoccupationssecurity.md)                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |                                                                                                                                                                                                                              |
| `search`                                                                                                                                                                                                                     | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | Search term for occupation (minimum 3 characters)                                                                                                                                                                            | software                                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::GetV1SalaryEstimatesOccupationsHeaderXGustoAPIVersion)](../../models/operations/getv1salaryestimatesoccupationsheaderxgustoapiversion.md)                                            | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |                                                                                                                                                                                                                              |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1SalaryEstimatesOccupationsResponse)](../../models/operations/getv1salaryestimatesoccupationsresponse.md)**

