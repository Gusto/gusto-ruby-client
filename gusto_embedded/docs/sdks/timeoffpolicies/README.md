# TimeOffPolicies

## Overview

### Available Operations

* [calculate_accruing_time_off_hours](#calculate_accruing_time_off_hours) - Calculate accruing time off hours
* [get](#get) - Get a time off policy
* [update](#update) - Update a time off policy
* [get_all](#get_all) - Get all time off policies for a company
* [create](#create) - Create a time off policy
* [add_employees](#add_employees) - Add employees to a time off policy
* [remove_employees](#remove_employees) - Remove employees from a time off policy
* [update_balance](#update_balance) - Update employee time off balances
* [deactivate](#deactivate) - Deactivate a time off policy

## calculate_accruing_time_off_hours

Returns a list of accruing time off for each time off policy associated with the employee.

Factors affecting the accrued hours:

- the time off policy accrual method (whether they get pay per hour worked, per hour paid, with / without overtime, accumulate time off based on pay period / calendar year / anniversary)
- how many hours of work during this pay period
- how many hours of PTO / sick hours taken during this pay period (for per hour paid policies only)
- company pay schedule frequency (for per pay period)

If none of the parameters is passed in, the accrued time off hour will be 0.

scope: `payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-payrolls-payroll_id-calculate_accruing_time_off_hours" method="post" path="/v1/payrolls/{payroll_id}/employees/{employee_id}/calculate_accruing_time_off_hours" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.time_off_policies.calculate_accruing_time_off_hours(payroll_id: '<id>', employee_id: '<id>', x_gusto_api_version: Models::Operations::PostV1PayrollsPayrollIdCalculateAccruingTimeOffHoursHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.payroll_calculate_accruing_time_off_hours_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `payroll_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the payroll                                                                                                                                                                                                      |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1PayrollsPayrollIdCalculateAccruingTimeOffHoursHeaderXGustoAPIVersion)](../../models/operations/postv1payrollspayrollidcalculateaccruingtimeoffhoursheaderxgustoapiversion.md)           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `payroll_calculate_accruing_time_off_hours_request`                                                                                                                                                                          | [T.nilable(Models::Shared::PayrollCalculateAccruingTimeOffHoursRequest)](../../models/shared/payrollcalculateaccruingtimeoffhoursrequest.md)                                                                                 | :heavy_minus_sign:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |

### Response

**[T.nilable(Models::Operations::PostV1PayrollsPayrollIdCalculateAccruingTimeOffHoursResponse)](../../models/operations/postv1payrollspayrollidcalculateaccruingtimeoffhoursresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get

Get a time off policy

scope: `time_off_policies:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-time_off_policies-time_off_policy_uuid" method="get" path="/v1/time_off_policies/{time_off_policy_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.time_off_policies.get(time_off_policy_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1TimeOffPoliciesTimeOffPolicyUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.time_off_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `time_off_policy_uuid`                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the time off policy                                                                                                                                                                                              |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1TimeOffPoliciesTimeOffPolicyUuidHeaderXGustoAPIVersion)](../../models/operations/getv1timeoffpoliciestimeoffpolicyuuidheaderxgustoapiversion.md)                                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1TimeOffPoliciesTimeOffPolicyUuidResponse)](../../models/operations/getv1timeoffpoliciestimeoffpolicyuuidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## update

Update a time off policy

scope: `time_off_policies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-time_off_policies-time_off_policy_uuid" method="put" path="/v1/time_off_policies/{time_off_policy_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.time_off_policies.update(time_off_policy_uuid: '<id>', request_body: Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidRequestBody.new(
  name: 'Vacation Policy',
  version: '56d00c178bc7393b2a206ed6a86afcb4'
), x_gusto_api_version: Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.time_off_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `time_off_policy_uuid`                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the time off policy                                                                                                                                                                                              |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidRequestBody](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuidrequestbody.md)                                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidHeaderXGustoAPIVersion)](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuidheaderxgustoapiversion.md)                                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidResponse)](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuidresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_all

Get all time off policies for a company

scope: `time_off_policies:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_uuid-time_off_policies" method="get" path="/v1/companies/{company_uuid}/time_off_policies" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.time_off_policies.get_all(company_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1CompaniesCompanyUuidTimeOffPoliciesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.time_off_policies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompaniesCompanyUuidTimeOffPoliciesHeaderXGustoAPIVersion)](../../models/operations/getv1companiescompanyuuidtimeoffpoliciesheaderxgustoapiversion.md)                                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyUuidTimeOffPoliciesResponse)](../../models/operations/getv1companiescompanyuuidtimeoffpoliciesresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## create

Create a time off policy

scope: `time_off_policies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-companies-company_uuid-time_off_policies" method="post" path="/v1/companies/{company_uuid}/time_off_policies" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.time_off_policies.create(company_uuid: '<id>', time_off_policy_request: Models::Shared::TimeOffPolicyRequest.new(
  name: 'Vacation Policy',
  policy_type: Models::Shared::TimeOffPolicyRequestPolicyType::VACATION,
  accrual_method: Models::Shared::AccrualMethod::PER_PAY_PERIOD
), x_gusto_api_version: Models::Operations::PostV1CompaniesCompanyUuidTimeOffPoliciesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.time_off_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `time_off_policy_request`                                                                                                                                                                                                    | [Models::Shared::TimeOffPolicyRequest](../../models/shared/timeoffpolicyrequest.md)                                                                                                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1CompaniesCompanyUuidTimeOffPoliciesHeaderXGustoAPIVersion)](../../models/operations/postv1companiescompanyuuidtimeoffpoliciesheaderxgustoapiversion.md)                                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompaniesCompanyUuidTimeOffPoliciesResponse)](../../models/operations/postv1companiescompanyuuidtimeoffpoliciesresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## add_employees

Add employees to a time off policy. Employees are required to have at least one job to be added to a time off policy. Accepts starting balances for non-unlimited policies

scope: `time_off_policies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-time_off_policies-time_off_policy_uuid-add_employees" method="put" path="/v1/time_off_policies/{time_off_policy_uuid}/add_employees" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.time_off_policies.add_employees(time_off_policy_uuid: '<id>', request_body: Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidAddEmployeesRequestBody.new(
  employees: []
), x_gusto_api_version: Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidAddEmployeesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.time_off_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `time_off_policy_uuid`                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the time off policy                                                                                                                                                                                              |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidAddEmployeesRequestBody](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuidaddemployeesrequestbody.md)                                                  | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidAddEmployeesHeaderXGustoAPIVersion)](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuidaddemployeesheaderxgustoapiversion.md)                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidAddEmployeesResponse)](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuidaddemployeesresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

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
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.time_off_policies.remove_employees(time_off_policy_uuid: '<id>', request_body: Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidRemoveEmployeesRequestBody.new(
  employees: []
), x_gusto_api_version: Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidRemoveEmployeesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.time_off_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `time_off_policy_uuid`                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the time off policy                                                                                                                                                                                              |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidRemoveEmployeesRequestBody](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuidremoveemployeesrequestbody.md)                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidRemoveEmployeesHeaderXGustoAPIVersion)](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuidremoveemployeesheaderxgustoapiversion.md)           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidRemoveEmployeesResponse)](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuidremoveemployeesresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## update_balance

Updates time off hours balances for employees for a time off policy.

scope: `time_off_policies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-time_off_policies-time_off_policy_uuid-balance" method="put" path="/v1/time_off_policies/{time_off_policy_uuid}/balance" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.time_off_policies.update_balance(time_off_policy_uuid: '<id>', request_body: Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidBalanceRequestBody.new(
  employees: []
), x_gusto_api_version: Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidBalanceHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.time_off_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `time_off_policy_uuid`                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the time off policy                                                                                                                                                                                              |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidBalanceRequestBody](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuidbalancerequestbody.md)                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidBalanceHeaderXGustoAPIVersion)](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuidbalanceheaderxgustoapiversion.md)                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidBalanceResponse)](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuidbalanceresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

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
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.time_off_policies.deactivate(time_off_policy_uuid: '<id>', x_gusto_api_version: Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidDeactivateHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.time_off_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `time_off_policy_uuid`                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the time off policy                                                                                                                                                                                              |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidDeactivateHeaderXGustoAPIVersion)](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuiddeactivateheaderxgustoapiversion.md)                     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1TimeOffPoliciesTimeOffPolicyUuidDeactivateResponse)](../../models/operations/putv1timeoffpoliciestimeoffpolicyuuiddeactivateresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |