# HistoricalEmployees

## Overview

### Available Operations

* [update](#update) - Update a historical employee

## update

Update a historical employee, an employee that was previously dismissed from the company in the current year.

scope: `employees:manage employees:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-historical_employees" method="put" path="/v1/companies/{company_uuid}/historical_employees/{historical_employee_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.historical_employees.update(company_uuid: '7b1d0df1-6403-4a06-8768-c1dd7d24d27a', historical_employee_uuid: 'a2b3c4d-5e6f-7890-abcd-ef1234567890', request_body: Models::Operations::PutV1HistoricalEmployeesRequestBody.new(
  version: '56d00c178bc7393b2a206ed6a86afcb4',
  first_name: 'Soren',
  middle_initial: 'A',
  last_name: 'Kierkegaard',
  preferred_first_name: 'Angel',
  date_of_birth: Date.parse('1995-05-05'),
  ssn: '123456294',
  work_address: Models::Operations::WorkAddress.new(
    location_uuid: '1da85d35-1910-40a7-9c1f-8e2b3d4c5a6f'
  ),
  home_address: Models::Operations::HomeAddress.new(
    street_1: '55 Mission St',
    street_2: 'Floor 3',
    city: 'San Francisco',
    state: 'CA',
    zip: '94105'
  ),
  termination: Models::Operations::Termination.new(
    effective_date: Date.parse('2022-01-01')
  ),
  email: 'soren.kierkegaard@example.com',
  job: Models::Operations::Job.new(
    hire_date: Date.parse('2020-01-01')
  ),
  employee_state_taxes: Models::Operations::EmployeeStateTaxes.new(
    wc_covered: true,
    wc_class_code: '051000'
  )
), x_gusto_api_version: Models::Operations::PutV1HistoricalEmployeesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  | Example                                                                                                                                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company that will employ this historical record.                                                                                                                                                             | 7b1d0df1-6403-4a06-8768-c1dd7d24d27a                                                                                                                                                                                         |
| `historical_employee_uuid`                                                                                                                                                                                                   | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the historical employee returned from create or list responses.                                                                                                                                                  | a2b3c4d-5e6f-7890-abcd-ef1234567890                                                                                                                                                                                          |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1HistoricalEmployeesRequestBody](../../models/operations/putv1historicalemployeesrequestbody.md)                                                                                                    | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |                                                                                                                                                                                                                              |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1HistoricalEmployeesHeaderXGustoAPIVersion)](../../models/operations/putv1historicalemployeesheaderxgustoapiversion.md)                                                                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |                                                                                                                                                                                                                              |

### Response

**[T.nilable(Models::Operations::PutV1HistoricalEmployeesResponse)](../../models/operations/putv1historicalemployeesresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |