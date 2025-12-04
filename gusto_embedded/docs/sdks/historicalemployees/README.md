# HistoricalEmployees
(*historical_employees*)

## Overview

### Available Operations

* [update](#update) - Update a historical employee

## update

Update a historical employee, an employee that was previously dismissed from the company in the current year.

scope: `employees:manage`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-historical_employees" method="put" path="/v1/companies/{company_uuid}/historical_employees/{historical_employee_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.historical_employees.update(company_uuid: '<id>', historical_employee_uuid: '<id>', request_body: Models::Operations::PutV1HistoricalEmployeesRequestBody.new(
  version: 'db0edd04aaac4506f7edab03ac855d56',
  first_name: 'Soren',
  middle_initial: 'A',
  last_name: 'Kierkegaard',
  date_of_birth: '1995-05-05T00:00:00Z',
  ssn: '123456294',
  work_address: Models::Operations::WorkAddress.new(
    location_uuid: '1da85d35-1910-4d5e-8e94-39e8cdfe8c9a',
  ),
  home_address: Models::Operations::PutV1HistoricalEmployeesHomeAddress.new(
    street_1: '300 3rd Street',
    street_2: nil,
    city: 'San Francisco',
    state: 'CA',
    zip: '94107',
  ),
  termination: Models::Operations::Termination.new(
    effective_date: Date.parse('2022-09-15T00:00:00Z'),
  ),
  job: Models::Operations::Job.new(
    hire_date: Date.parse('2018-05-09T00:00:00Z'),
  ),
  employee_state_taxes: Models::Operations::EmployeeStateTaxes.new(
    wc_covered: true,
    wc_class_code: '20992',
  ),
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `historical_employee_uuid`                                                                                                                                                                                                   | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the historical employee                                                                                                                                                                                          |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1HistoricalEmployeesRequestBody](../../models/operations/putv1historicalemployeesrequestbody.md)                                                                                                    | :heavy_check_mark:                                                                                                                                                                                                           | Update a historical employee.                                                                                                                                                                                                |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1HistoricalEmployeesResponse)](../../models/operations/putv1historicalemployeesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |