# EmployeeEmployments

## Overview

### Available Operations

* [get_rehire](#get_rehire) - Get an employee rehire
* [create_rehire](#create_rehire) - Create an employee rehire
* [rehire](#rehire) - Update an employee rehire
* [delete_rehire](#delete_rehire) - Delete an employee rehire
* [get_history](#get_history) - Get employment history for an employee
* [get_terminations](#get_terminations) - Get terminations for an employee
* [create_termination](#create_termination) - Create an employee termination
* [delete_termination](#delete_termination) - Delete an employee termination
* [update_termination](#update_termination) - Update an employee termination
* [get_v1_terminations_employee_id](#get_v1_terminations_employee_id) - Get an employee termination

## get_rehire

Retrieve an employee's rehire, which contains information on when the employee returns to work.

scope: `employments:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employees-employee_id-rehire" method="get" path="/v1/employees/{employee_id}/rehire" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_employments.get_rehire(employee_id: '<id>', x_gusto_api_version: Models::Operations::GetV1EmployeesEmployeeIdRehireHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.rehire.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1EmployeesEmployeeIdRehireHeaderXGustoAPIVersion)](../../models/operations/getv1employeesemployeeidrehireheaderxgustoapiversion.md)                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1EmployeesEmployeeIdRehireResponse)](../../models/operations/getv1employeesemployeeidrehireresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## create_rehire

Rehire is created whenever an employee is scheduled to return to the company.

scope: `employments:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-employees-employee_id-rehire" method="post" path="/v1/employees/{employee_id}/rehire" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_employments.create_rehire(employee_id: '<id>', rehire_body: Models::Shared::RehireBody.new(
  effective_date: '2023-06-30',
  file_new_hire_report: false,
  work_location_uuid: 'b6ae9d93-d4b8-4119-8c96-dba595dd8c30'
), x_gusto_api_version: Models::Operations::PostV1EmployeesEmployeeIdRehireHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.rehire.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `rehire_body`                                                                                                                                                                                                                | [Models::Shared::RehireBody](../../models/shared/rehirebody.md)                                                                                                                                                              | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1EmployeesEmployeeIdRehireHeaderXGustoAPIVersion)](../../models/operations/postv1employeesemployeeidrehireheaderxgustoapiversion.md)                                                     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1EmployeesEmployeeIdRehireResponse)](../../models/operations/postv1employeesemployeeidrehireresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## rehire

Update an employee's rehire.

scope: `employments:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-employees-employee_id-rehire" method="put" path="/v1/employees/{employee_id}/rehire" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_employments.rehire(employee_id: '<id>', rehire_update_request_body: Models::Shared::RehireUpdateRequestBody.new(
  version: '56d00c178bc7393b2a206ed6a86afcb4',
  effective_date: '2023-06-30',
  file_new_hire_report: true,
  work_location_uuid: 'b6ae9d93-d4b8-4119-8c96-dba595dd8c30'
), x_gusto_api_version: Models::Operations::PutV1EmployeesEmployeeIdRehireHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.rehire.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `rehire_update_request_body`                                                                                                                                                                                                 | [Models::Shared::RehireUpdateRequestBody](../../models/shared/rehireupdaterequestbody.md)                                                                                                                                    | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1EmployeesEmployeeIdRehireHeaderXGustoAPIVersion)](../../models/operations/putv1employeesemployeeidrehireheaderxgustoapiversion.md)                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1EmployeesEmployeeIdRehireResponse)](../../models/operations/putv1employeesemployeeidrehireresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## delete_rehire

Delete an employee rehire. An employee rehire cannot be deleted if it's active (past effective date).

scope: `employments:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-employees-employee_id-rehire" method="delete" path="/v1/employees/{employee_id}/rehire" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_employments.delete_rehire(employee_id: '<id>', x_gusto_api_version: Models::Operations::DeleteV1EmployeesEmployeeIdRehireHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::DeleteV1EmployeesEmployeeIdRehireHeaderXGustoAPIVersion)](../../models/operations/deletev1employeesemployeeidrehireheaderxgustoapiversion.md)                                                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1EmployeesEmployeeIdRehireResponse)](../../models/operations/deletev1employeesemployeeidrehireresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_history

Retrieve the employment history for a given employee, which includes termination and rehire.

scope: `employments:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employees-employee_id-employment_history" method="get" path="/v1/employees/{employee_id}/employment_history" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_employments.get_history(employee_id: '<id>', x_gusto_api_version: Models::Operations::GetV1EmployeesEmployeeIdEmploymentHistoryHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.employment_history_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1EmployeesEmployeeIdEmploymentHistoryHeaderXGustoAPIVersion)](../../models/operations/getv1employeesemployeeidemploymenthistoryheaderxgustoapiversion.md)                                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1EmployeesEmployeeIdEmploymentHistoryResponse)](../../models/operations/getv1employeesemployeeidemploymenthistoryresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## get_terminations

Terminations are created whenever an employee is scheduled to leave the company. The only things required are an effective date (their last day of work) and whether they should receive their wages in a one-off termination payroll or with the rest of the company.

Note that some states require employees to receive their final wages within 24 hours (unless they consent otherwise,) in which case running a one-off payroll may be the only option.

scope: `employments:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employees-employee_id-terminations" method="get" path="/v1/employees/{employee_id}/terminations" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_employments.get_terminations(employee_id: '<id>', x_gusto_api_version: Models::Operations::GetV1EmployeesEmployeeIdTerminationsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.terminations.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1EmployeesEmployeeIdTerminationsHeaderXGustoAPIVersion)](../../models/operations/getv1employeesemployeeidterminationsheaderxgustoapiversion.md)                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1EmployeesEmployeeIdTerminationsResponse)](../../models/operations/getv1employeesemployeeidterminationsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## create_termination

Create a termination for an employee. The only things required are an effective date (their last day of work) and whether they should receive their wages in a one-off termination payroll or with the rest of the company.

Note that some states require employees to receive their final wages within 24 hours (unless they consent otherwise,) in which case running a one-off payroll may be the only option.

scope: `employments:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-employees-employee_id-terminations" method="post" path="/v1/employees/{employee_id}/terminations" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_employments.create_termination(employee_id: '<id>', request_body: Models::Operations::PostV1EmployeesEmployeeIdTerminationsRequestBody.new(
  effective_date: '2020-06-30'
), x_gusto_api_version: Models::Operations::PostV1EmployeesEmployeeIdTerminationsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.termination.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  | Example                                                                                                                                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |                                                                                                                                                                                                                              |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostV1EmployeesEmployeeIdTerminationsRequestBody](../../models/operations/postv1employeesemployeeidterminationsrequestbody.md)                                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          | {<br/>"effective_date": "2020-06-30",<br/>"run_termination_payroll": false<br/>}                                                                                                                                             |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1EmployeesEmployeeIdTerminationsHeaderXGustoAPIVersion)](../../models/operations/postv1employeesemployeeidterminationsheaderxgustoapiversion.md)                                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |                                                                                                                                                                                                                              |

### Response

**[T.nilable(Models::Operations::PostV1EmployeesEmployeeIdTerminationsResponse)](../../models/operations/postv1employeesemployeeidterminationsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## delete_termination

Delete an employee termination.

scope: `employments:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-employees-employee_id-terminations" method="delete" path="/v1/employees/{employee_id}/terminations" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_employments.delete_termination(employee_id: '<id>', x_gusto_api_version: Models::Operations::DeleteV1EmployeesEmployeeIdTerminationsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::DeleteV1EmployeesEmployeeIdTerminationsHeaderXGustoAPIVersion)](../../models/operations/deletev1employeesemployeeidterminationsheaderxgustoapiversion.md)                                     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1EmployeesEmployeeIdTerminationsResponse)](../../models/operations/deletev1employeesemployeeidterminationsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## update_termination

Terminations are created whenever an employee is scheduled to leave the company. The only things required are an effective date (their last day of work) and whether they should receive their wages in a one-off termination payroll or with the rest of the company.

Note that some states require employees to receive their final wages within 24 hours (unless they consent otherwise,) in which case running a one-off payroll may be the only option.

scope: `employments:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-terminations-employee_id" method="put" path="/v1/terminations/{employee_id}" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_employments.update_termination(employee_id: '<id>', request_body: Models::Operations::PutV1TerminationsEmployeeIdRequestBody.new(
  version: 'd487dd0b55dfcacdd920ccbdaeafa351',
  effective_date: '2020-06-30'
), x_gusto_api_version: Models::Operations::PutV1TerminationsEmployeeIdHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.termination.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  | Example                                                                                                                                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |                                                                                                                                                                                                                              |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1TerminationsEmployeeIdRequestBody](../../models/operations/putv1terminationsemployeeidrequestbody.md)                                                                                              | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          | {<br/>"version": "d487dd0b55dfcacdd920ccbdaeafa351",<br/>"effective_date": "2020-06-30",<br/>"run_termination_payroll": false<br/>}                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1TerminationsEmployeeIdHeaderXGustoAPIVersion)](../../models/operations/putv1terminationsemployeeidheaderxgustoapiversion.md)                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |                                                                                                                                                                                                                              |

### Response

**[T.nilable(Models::Operations::PutV1TerminationsEmployeeIdResponse)](../../models/operations/putv1terminationsemployeeidresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_v1_terminations_employee_id

Terminations are created whenever an employee is scheduled to leave the company. The only things required are an effective date (their last day of work) and whether they should receive their wages in a one-off termination payroll or with the rest of the company.

Note that some states require employees to receive their final wages within 24 hours (unless they consent otherwise,) in which case running a one-off payroll may be the only option.

scope: `employments:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-terminations-employee_id" method="get" path="/v1/terminations/{employee_id}" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.employee_employments.get_v1_terminations_employee_id(employee_id: '<id>', x_gusto_api_version: Models::Operations::GetV1TerminationsEmployeeIdHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.termination.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1TerminationsEmployeeIdHeaderXGustoAPIVersion)](../../models/operations/getv1terminationsemployeeidheaderxgustoapiversion.md)                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1TerminationsEmployeeIdResponse)](../../models/operations/getv1terminationsemployeeidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |