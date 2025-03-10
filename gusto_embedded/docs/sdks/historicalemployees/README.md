# HistoricalEmployees
(*historical_employees*)

## Overview

### Available Operations

* [update](#update) - Update a historical employee

## update

Update a historical employee, an employee that was previously dismissed from the company in the current year.

scope: `employees:manage`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.historical_employees.update(company_uuid="<id>", historical_employee_uuid="<id>", request_body=::GustoEmbedded::Operations::PutV1HistoricalEmployeesRequestBody.new(
  version: "<value>",
  first_name: "Ruthe",
  last_name: "Hegmann",
  date_of_birth: "2006-08-26",
  ssn: "<value>",
  work_address: ::GustoEmbedded::Operations::WorkAddress.new(),
  home_address: ::GustoEmbedded::Operations::PutV1HistoricalEmployeesHomeAddress.new(
    street_1: "<value>",
    city: "Kuhnworth",
    state: "Arizona",
    zip: "43217-8347",
  ),
  termination: ::GustoEmbedded::Operations::Termination.new(),
  job: ::GustoEmbedded::Operations::Job.new(),
), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `historical_employee_uuid`                                                                                                                                                                                                   | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the historical employee                                                                                                                                                                                          |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PutV1HistoricalEmployeesRequestBody](../../models/operations/putv1historicalemployeesrequestbody.md)                                                                                           | :heavy_check_mark:                                                                                                                                                                                                           | Update a historical employee.                                                                                                                                                                                                |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PutV1HistoricalEmployeesResponse)](../../models/operations/putv1historicalemployeesresponse.md)**

