# PaySchedules
(*pay_schedules*)

## Overview

### Available Operations

* [create](#create) - Create a new pay schedule
* [get_all](#get_all) - Get the pay schedules for a company
* [get_preview](#get_preview) - Preview pay schedule dates
* [get](#get) - Get a pay schedule
* [update](#update) - Update a pay schedule
* [get_pay_periods](#get_pay_periods) - Get pay periods for a company
* [get_unprocessed_termination_periods](#get_unprocessed_termination_periods) - Get termination pay periods for a company
* [get_assignments](#get_assignments) - Get pay schedule assignments for a company
* [preview_assignment](#preview_assignment) - Preview pay schedule assignments for a company
* [assign](#assign) - Assign pay schedules for a company

## create

If a company does not have any pay schedules, this endpoint will create a single pay schedule and assign it to all employees. This is a common use case during company onboarding.

If a company has an existing active pay schedule and want to support multiple pay schedules, this endpoint will create a pay schedule that is not assigned to any employee.

Be sure to **[check state laws](https://www.dol.gov/agencies/whd/state/payday)** to know what schedule is right for your customers.

scope: `pay_schedules:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-companies-company_id-pay_schedules" method="post" path="/v1/companies/{company_id}/pay_schedules" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.pay_schedules.create(company_id: '<id>', request_body: Models::Operations::PostV1CompaniesCompanyIdPaySchedulesRequestBody.new(
  frequency: Models::Operations::Frequency::TWICE_PER_MONTH,
  anchor_pay_date: '2021-10-15',
  anchor_end_of_pay_period: '2021-10-15',
  day_1: 15,
  day_2: 31,
  custom_name: 'demo pay schedule',
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.pay_schedule_create_update.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostV1CompaniesCompanyIdPaySchedulesRequestBody](../../models/operations/postv1companiescompanyidpayschedulesrequestbody.md)                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompaniesCompanyIdPaySchedulesResponse)](../../models/operations/postv1companiescompanyidpayschedulesresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## get_all

The pay schedule object in Gusto captures the details of when employees work and when they should be paid. A company can have multiple pay schedules.

scope: `pay_schedules:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-pay_schedules" method="get" path="/v1/companies/{company_id}/pay_schedules" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.pay_schedules.get_all(company_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.pay_schedule_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `page`                                                                                                                                                                                                                       | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | The page that is requested. When unspecified, will load all objects unless endpoint forces pagination.                                                                                                                       |
| `per`                                                                                                                                                                                                                        | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Number of objects per page. For majority of endpoints will default to 25                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdPaySchedulesResponse)](../../models/operations/getv1companiescompanyidpayschedulesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_preview

Provides a preview of a pay schedule with the specified parameters for the next 18 months.

scope: `pay_schedules:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-pay_schedules-preview" method="get" path="/v1/companies/{company_id}/pay_schedules/preview" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

req = Models::Operations::GetV1CompaniesCompanyIdPaySchedulesPreviewRequest.new(
  company_id: '<id>',
  frequency: Models::Operations::QueryParamFrequency::MONTHLY,
  anchor_pay_date: '2020-05-15',
  anchor_end_of_pay_period: '2020-05-08',
)

res = s.pay_schedules.get_preview(request: req)

unless res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                             | Type                                                                                                                                                  | Required                                                                                                                                              | Description                                                                                                                                           |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                             | [Models::Operations::GetV1CompaniesCompanyIdPaySchedulesPreviewRequest](../../models/operations/getv1companiescompanyidpayschedulespreviewrequest.md) | :heavy_check_mark:                                                                                                                                    | The request object to use for the request.                                                                                                            |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdPaySchedulesPreviewResponse)](../../models/operations/getv1companiescompanyidpayschedulespreviewresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get

The pay schedule object in Gusto captures the details of when employees work and when they should be paid. A company can have multiple pay schedules.

scope: `pay_schedules:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-pay_schedules-pay_schedule_id" method="get" path="/v1/companies/{company_id}/pay_schedules/{pay_schedule_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.pay_schedules.get(company_id: '<id>', pay_schedule_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.pay_schedule_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `pay_schedule_id`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the pay schedule                                                                                                                                                                                                 |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdPaySchedulesPayScheduleIdResponse)](../../models/operations/getv1companiescompanyidpayschedulespayscheduleidresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update

Updates a pay schedule.

scope: `pay_schedules:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-companies-company_id-pay_schedules-pay_schedule_id" method="put" path="/v1/companies/{company_id}/pay_schedules/{pay_schedule_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.pay_schedules.update(company_id: '<id>', pay_schedule_id: '<id>', request_body: Models::Operations::PutV1CompaniesCompanyIdPaySchedulesPayScheduleIdRequestBody.new(
  version: '68934a3e9455fa72420237eb05902327',
  frequency: Models::Operations::PutV1CompaniesCompanyIdPaySchedulesPayScheduleIdFrequency::TWICE_PER_MONTH,
  anchor_pay_date: '2021-10-15',
  anchor_end_of_pay_period: '2021-10-15',
  day_1: 15,
  day_2: 31,
  custom_name: 'demo pay schedule',
  auto_pilot: true,
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.pay_schedule_create_update.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `pay_schedule_id`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the pay schedule                                                                                                                                                                                                 |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1CompaniesCompanyIdPaySchedulesPayScheduleIdRequestBody](../../models/operations/putv1companiescompanyidpayschedulespayscheduleidrequestbody.md)                                                    | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1CompaniesCompanyIdPaySchedulesPayScheduleIdResponse)](../../models/operations/putv1companiescompanyidpayschedulespayscheduleidresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## get_pay_periods

Pay periods are the foundation of payroll. Compensation, time & attendance, taxes, and expense reports all rely on when they happened. To begin submitting information for a given payroll, we need to agree on the time period.

By default, this endpoint returns pay periods starting from 6 months ago to the date today.  Use the `start_date` and `end_date` parameters to change the scope of the response.  End dates can be up to 3 months in the future and there is no limit on start dates.

Starting in version '2023-04-01', the eligible_employees attribute was removed from the response.  The eligible employees for a payroll are determined by the employee_compensations returned from the payrolls#prepare endpoint.

scope: `payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-pay_periods" method="get" path="/v1/companies/{company_id}/pay_periods" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

req = Models::Operations::GetV1CompaniesCompanyIdPayPeriodsRequest.new(
  company_id: '<id>',
  start_date: '2020-01-01',
  end_date: '2020-01-31',
)

res = s.pay_schedules.get_pay_periods(request: req)

unless res.pay_period_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                           | [Models::Operations::GetV1CompaniesCompanyIdPayPeriodsRequest](../../models/operations/getv1companiescompanyidpayperiodsrequest.md) | :heavy_check_mark:                                                                                                                  | The request object to use for the request.                                                                                          |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdPayPeriodsResponse)](../../models/operations/getv1companiescompanyidpayperiodsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_unprocessed_termination_periods

When a payroll admin terminates an employee and selects "Dismissal Payroll" as the employee's final payroll, their last pay period will appear on the list.

This endpoint returns the unprocessed pay periods for past and future terminated employees in a given company.

scope: `payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-unprocessed_termination_pay_periods" method="get" path="/v1/companies/{company_id}/pay_periods/unprocessed_termination_pay_periods" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.pay_schedules.get_unprocessed_termination_periods(company_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.unprocessed_termination_pay_period_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdUnprocessedTerminationPayPeriodsResponse)](../../models/operations/getv1companiescompanyidunprocessedterminationpayperiodsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_assignments

This endpoint returns the current pay schedule assignment for a company, with pay schedule and employee/department mappings depending on the pay schedule type.

scope: `pay_schedules:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-pay_schedules-assignments" method="get" path="/v1/companies/{company_id}/pay_schedules/assignments" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.pay_schedules.get_assignments(company_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.pay_schedule_assignment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdPaySchedulesAssignmentsResponse)](../../models/operations/getv1companiescompanyidpayschedulesassignmentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## preview_assignment

This endpoint returns the employee changes, including pay period and transition pay periods, for changing the pay schedule.

scope: `pay_schedules:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-companies-company_id-pay_schedules-assignment_preview" method="post" path="/v1/companies/{company_id}/pay_schedules/assignment_preview" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.pay_schedules.preview_assignment(company_id: '<id>', pay_schedule_assignment_body: Models::Shared::PayScheduleAssignmentBody.new(
  type: Models::Shared::PayScheduleAssignmentBodyType::BY_EMPLOYEE,
  employees: [
    Models::Shared::Employees.new(
      employee_uuid: 'f0238368-f2cf-43e2-9a07-b0265f2cec69',
      pay_schedule_uuid: 'c277ac52-9871-4a96-a1e6-0c449684602a',
    ),
  ],
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.pay_schedule_assignment_preview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `pay_schedule_assignment_body`                                                                                                                                                                                               | [Models::Shared::PayScheduleAssignmentBody](../../models/shared/payscheduleassignmentbody.md)                                                                                                                                | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompaniesCompanyIdPaySchedulesAssignmentPreviewResponse)](../../models/operations/postv1companiescompanyidpayschedulesassignmentpreviewresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## assign

This endpoint assigns employees to pay schedules based on the schedule type.
For `by_employee` and `by_department` schedules, use the `partial_assignment` parameter to control the assignment scope. Set it to `true` for partial assignments (only some employees or departments at a time) and `false` for full assignments (all employees or departments at once).

scope: `pay_schedules:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-companies-company_id-pay_schedules-assign" method="post" path="/v1/companies/{company_id}/pay_schedules/assign" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.pay_schedules.assign(company_id: '<id>', pay_schedule_assignment_body: Models::Shared::PayScheduleAssignmentBody.new(
  type: Models::Shared::PayScheduleAssignmentBodyType::BY_EMPLOYEE,
  employees: [
    Models::Shared::Employees.new(
      employee_uuid: 'f0238368-f2cf-43e2-9a07-b0265f2cec69',
      pay_schedule_uuid: 'c277ac52-9871-4a96-a1e6-0c449684602a',
    ),
  ],
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `pay_schedule_assignment_body`                                                                                                                                                                                               | [Models::Shared::PayScheduleAssignmentBody](../../models/shared/payscheduleassignmentbody.md)                                                                                                                                | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompaniesCompanyIdPaySchedulesAssignResponse)](../../models/operations/postv1companiescompanyidpayschedulesassignresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |