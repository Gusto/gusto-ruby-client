# TimeOffPolicies
(*time_off_policies*)

## Overview

### Available Operations

* [calculate_accruing_time_off_hours](#calculate_accruing_time_off_hours) - Calculate accruing time off hours
* [get](#get) - Get a time off policy
* [update](#update) - Update a time off policy
* [get_all](#get_all) - Get all time off policies
* [create](#create) - Create a time off policy
* [add_employees](#add_employees) - Add employees to a time off policy
* [remove_employees](#remove_employees) - Remove employees from a time off policy
* [update_balance](#update_balance) - Update employee time off hour balances
* [deactivate](#deactivate) - Deactivate a time off policy

## calculate_accruing_time_off_hours

Returns a list of accruing time off for each time off policy associated with the employee.

Factors affecting the accrued hours:
  * the time off policy accrual method (whether they get pay per hour worked, per hour paid, with / without overtime, accumulate time off based on pay period / calendar year / anniversary)
  * how many hours of work during this pay period
  * how many hours of PTO / sick hours taken during this pay period (for per hour paid policies only)
  * company pay schedule frequency (for per pay period)

If none of the parameters is passed in, the accrued time off hour will be 0.

scope: `payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-payrolls-payroll_id-calculate_accruing_time_off_hours" method="post" path="/v1/payrolls/{payroll_id}/employees/{employee_id}/calculate_accruing_time_off_hours" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.time_off_policies.calculate_accruing_time_off_hours(payroll_id: '<id>', employee_id: '<id>', request_body: Models::Operations::PostV1PayrollsPayrollIdCalculateAccruingTimeOffHoursRequestBody.new(
  regular_hours_worked: 30.25,
  overtime_hours_worked: 10.0,
  double_overtime_hours_worked: 0.0,
  pto_hours_used: 5.5,
  sick_hours_used: 0.0,
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.accruing_time_off_hour_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `payroll_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the payroll                                                                                                                                                                                                      |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostV1PayrollsPayrollIdCalculateAccruingTimeOffHoursRequestBody](../../models/operations/postv1payrollspayrollidcalculateaccruingtimeoffhoursrequestbody.md)                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1PayrollsPayrollIdCalculateAccruingTimeOffHoursResponse)](../../models/operations/postv1payrollspayrollidcalculateaccruingtimeoffhoursresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## get

Get a time off policy

scope: `time_off_policies:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-time_off_policies-time_off_policy_uuid" method="get" path="/v1/time_off_policies/{time_off_policy_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.time_off_policies.get(time_off_policy_uuid: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.time_off_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `time_off_policy_uuid`                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company time off policy                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetTimeOffPoliciesTimeOffPolicyUuidResponse)](../../models/operations/gettimeoffpoliciestimeoffpolicyuuidresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update

Update a time off policy

scope: `time_off_policies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-time_off_policies-time_off_policy_uuid" method="put" path="/v1/time_off_policies/{time_off_policy_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.time_off_policies.update(time_off_policy_uuid: '<id>', request_body: Models::Operations::PutTimeOffPoliciesTimeOffPolicyUuidRequestBody.new(
  name: 'Hourly Vacation Policy',
  accrual_method: Models::Operations::AccrualMethod::PER_HOUR_PAID,
  accrual_rate: '4.0',
  accrual_rate_unit: '80.0',
  paid_out_on_termination: true,
  accrual_waiting_period_days: 30,
  carryover_limit_hours: '200.0',
  max_accrual_hours_per_year: '120.0',
  max_hours: '240.0',
  version: '<value>',
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.time_off_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `time_off_policy_uuid`                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company time off policy                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutTimeOffPoliciesTimeOffPolicyUuidRequestBody](../../models/operations/puttimeoffpoliciestimeoffpolicyuuidrequestbody.md)                                                                              | :heavy_check_mark:                                                                                                                                                                                                           | Can update any attributes of the time off policy except policy_type, is_active, complete & employees                                                                                                                         |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutTimeOffPoliciesTimeOffPolicyUuidResponse)](../../models/operations/puttimeoffpoliciestimeoffpolicyuuidresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## get_all

Get all time off policies for a company

scope: `time_off_policies:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-companies-company_uuid-time_off_policies" method="get" path="/v1/companies/{company_uuid}/time_off_policies" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.time_off_policies.get_all(company_uuid: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.time_off_policy_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetCompaniesCompanyUuidTimeOffPoliciesResponse)](../../models/operations/getcompaniescompanyuuidtimeoffpoliciesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create

Create a time off policy

scope: `time_off_policies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-companies-company_uuid-time_off_policies" method="post" path="/v1/companies/{company_uuid}/time_off_policies" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.time_off_policies.create(company_uuid: '<id>', request_body: Models::Operations::PostCompaniesCompanyUuidTimeOffPoliciesRequestBody.new(
  name: 'Unlimited Vacation Policy',
  policy_type: 'vacation',
  accrual_method: Models::Operations::PostCompaniesCompanyUuidTimeOffPoliciesAccrualMethod::UNLIMITED,
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.time_off_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostCompaniesCompanyUuidTimeOffPoliciesRequestBody](../../models/operations/postcompaniescompanyuuidtimeoffpoliciesrequestbody.md)                                                                      | :heavy_check_mark:                                                                                                                                                                                                           | Requires a policy name, a policy_type, and an accrual_method                                                                                                                                                                 |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostCompaniesCompanyUuidTimeOffPoliciesResponse)](../../models/operations/postcompaniescompanyuuidtimeoffpoliciesresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## add_employees

Add employees to a time off policy. Employees are required to have at least one job to be added to a time off policy. Accepts starting balances for non-unlimited policies

scope: `time_off_policies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-version-time_off_policies-time_off_policy_uuid-add_employees" method="put" path="/v1/time_off_policies/{time_off_policy_uuid}/add_employees" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.time_off_policies.add_employees(time_off_policy_uuid: '<id>', request_body: Models::Operations::PutVersionTimeOffPoliciesTimeOffPolicyUuidAddEmployeesRequestBody.new(), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.time_off_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `time_off_policy_uuid`                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company time off policy                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutVersionTimeOffPoliciesTimeOffPolicyUuidAddEmployeesRequestBody](../../models/operations/putversiontimeoffpoliciestimeoffpolicyuuidaddemployeesrequestbody.md)                                        | :heavy_check_mark:                                                                                                                                                                                                           | A list of employee objects containing the employee uuid                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutVersionTimeOffPoliciesTimeOffPolicyUuidAddEmployeesResponse)](../../models/operations/putversiontimeoffpoliciestimeoffpolicyuuidaddemployeesresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## remove_employees

Remove employees from a time off policy

scope: `time_off_policies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-time_off_policies-time_off_policy_uuid-remove_employees" method="put" path="/v1/time_off_policies/{time_off_policy_uuid}/remove_employees" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.time_off_policies.remove_employees(time_off_policy_uuid: '<id>', request_body: Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidRemoveEmployeesRequestBody.new(), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.time_off_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `time_off_policy_uuid`                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company time off policy                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidRemoveEmployeesRequestBody](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuidremoveemployeesrequestbody.md)                                            | :heavy_check_mark:                                                                                                                                                                                                           | A list of employee objects containing the employee uuid                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidRemoveEmployeesResponse)](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuidremoveemployeesresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## update_balance

Updates time off hours balances for employees for a time off policy

scope: `time_off_policies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-version-time_off_policies-time_off_policy_uuid-balance" method="put" path="/v1/time_off_policies/{time_off_policy_uuid}/balance" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.time_off_policies.update_balance(time_off_policy_uuid: '<id>', request_body: Models::Operations::PutVersionTimeOffPoliciesTimeOffPolicyUuidBalanceRequestBody.new(), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.time_off_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `time_off_policy_uuid`                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company time off policy                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutVersionTimeOffPoliciesTimeOffPolicyUuidBalanceRequestBody](../../models/operations/putversiontimeoffpoliciestimeoffpolicyuuidbalancerequestbody.md)                                                  | :heavy_check_mark:                                                                                                                                                                                                           | A list of employee objects containing the employee uuid and time off hours balance                                                                                                                                           |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutVersionTimeOffPoliciesTimeOffPolicyUuidBalanceResponse)](../../models/operations/putversiontimeoffpoliciestimeoffpolicyuuidbalanceresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## deactivate

Deactivate a time off policy

scope: `time_off_policies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-time_off_policies-time_off_policy_uuid-deactivate" method="put" path="/v1/time_off_policies/{time_off_policy_uuid}/deactivate" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.time_off_policies.deactivate(time_off_policy_uuid: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.time_off_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `time_off_policy_uuid`                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company time off policy                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidDeactivateResponse)](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuiddeactivateresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |