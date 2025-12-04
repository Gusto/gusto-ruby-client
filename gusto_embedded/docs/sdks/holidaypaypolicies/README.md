# HolidayPayPolicies
(*holiday_pay_policies*)

## Overview

### Available Operations

* [get](#get) - Get a company's holiday pay policy
* [create](#create) - Create a holiday pay policy for a company
* [update](#update) - Update a company's holiday pay policy
* [delete](#delete) - Delete a company's holiday pay policy
* [add_employees](#add_employees) - Add employees to a company's holiday pay policy
* [remove_employees](#remove_employees) - Remove employees from a company's holiday pay policy
* [preview_paid_holidays](#preview_paid_holidays) - Preview a company's paid holidays

## get

Get a company's holiday pay policy

scope: `holiday_pay_policies:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-companies-company_uuid-holiday_pay_policy" method="get" path="/v1/companies/{company_uuid}/holiday_pay_policy" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.holiday_pay_policies.get(company_uuid: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.holiday_pay_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetCompaniesCompanyUuidHolidayPayPolicyResponse)](../../models/operations/getcompaniescompanyuuidholidaypaypolicyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create

Create a holiday pay policy for a company

scope: `holiday_pay_policies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-companies-company_uuid-holiday_pay_policy" method="post" path="/v1/companies/{company_uuid}/holiday_pay_policy" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.holiday_pay_policies.create(company_uuid: '<id>', request_body: Models::Operations::PostCompaniesCompanyUuidHolidayPayPolicyRequestBody.new(
  federal_holidays: Models::Operations::FederalHolidays.new(
    mlk_day: Models::Operations::MlkDay.new(
      selected: true,
    ),
    memorial_day: Models::Operations::MemorialDay.new(
      selected: true,
    ),
    independence_day: Models::Operations::IndependenceDay.new(
      selected: true,
    ),
    veterans_day: Models::Operations::VeteransDay.new(
      selected: true,
    ),
    thanksgiving: Models::Operations::Thanksgiving.new(
      selected: true,
    ),
    christmas_day: Models::Operations::ChristmasDay.new(
      selected: true,
    ),
  ),
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.holiday_pay_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostCompaniesCompanyUuidHolidayPayPolicyRequestBody](../../models/operations/postcompaniescompanyuuidholidaypaypolicyrequestbody.md)                                                                    | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostCompaniesCompanyUuidHolidayPayPolicyResponse)](../../models/operations/postcompaniescompanyuuidholidaypaypolicyresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## update

Update a company's holiday pay policy

scope: `holiday_pay_policies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-companies-company_uuid-holiday_pay_policy" method="put" path="/v1/companies/{company_uuid}/holiday_pay_policy" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.holiday_pay_policies.update(company_uuid: '<id>', request_body: Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyRequestBody.new(
  version: '1b37938b017c7fd7116bada007072290',
  federal_holidays: Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyFederalHolidays.new(
    mlk_day: Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyMlkDay.new(
      selected: true,
    ),
    memorial_day: Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyMemorialDay.new(
      selected: true,
    ),
    independence_day: Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyIndependenceDay.new(
      selected: true,
    ),
    veterans_day: Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyVeteransDay.new(
      selected: true,
    ),
    thanksgiving: Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyThanksgiving.new(
      selected: true,
    ),
    christmas_day: Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyChristmasDay.new(
      selected: true,
    ),
  ),
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.holiday_pay_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyRequestBody](../../models/operations/putcompaniescompanyuuidholidaypaypolicyrequestbody.md)                                                                      | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyResponse)](../../models/operations/putcompaniescompanyuuidholidaypaypolicyresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## delete

Delete a company's holiday pay policy

scope: `holiday_pay_policies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-companies-company_uuid-holiday_pay_policy" method="delete" path="/v1/companies/{company_uuid}/holiday_pay_policy" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.holiday_pay_policies.delete(company_uuid: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteCompaniesCompanyUuidHolidayPayPolicyResponse)](../../models/operations/deletecompaniescompanyuuidholidaypaypolicyresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## add_employees

Add employees to a company's holiday pay policy

scope: `holiday_pay_policies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-companies-company_uuid-holiday_pay_policy-add" method="put" path="/v1/companies/{company_uuid}/holiday_pay_policy/add" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.holiday_pay_policies.add_employees(company_uuid: '<id>', request_body: Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyAddRequestBody.new(
  version: '1b37938b017c7fd7116bada007072290',
  employees: [
    Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyAddEmployees.new(
      uuid: '1ca3cd25-3eda-48c6-ac88-f0e7fb91a15a',
    ),
    Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyAddEmployees.new(
      uuid: 'fe977550-6621-4cfc-b4af-60b6af58c8ef',
    ),
  ],
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.holiday_pay_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyAddRequestBody](../../models/operations/putcompaniescompanyuuidholidaypaypolicyaddrequestbody.md)                                                                | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyAddResponse)](../../models/operations/putcompaniescompanyuuidholidaypaypolicyaddresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## remove_employees

Remove employees from a company's holiday pay policy

scope: `holiday_pay_policies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-companies-company_uuid-holiday_pay_policy-remove" method="put" path="/v1/companies/{company_uuid}/holiday_pay_policy/remove" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.holiday_pay_policies.remove_employees(company_uuid: '<id>', request_body: Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyRemoveRequestBody.new(
  version: '1b37938b017c7fd7116bada007072290',
  employees: [
    Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyRemoveEmployees.new(
      uuid: '1ca3cd25-3eda-48c6-ac88-f0e7fb91a15a',
    ),
    Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyRemoveEmployees.new(
      uuid: 'fe977550-6621-4cfc-b4af-60b6af58c8ef',
    ),
  ],
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.holiday_pay_policy.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyRemoveRequestBody](../../models/operations/putcompaniescompanyuuidholidaypaypolicyremoverequestbody.md)                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutCompaniesCompanyUuidHolidayPayPolicyRemoveResponse)](../../models/operations/putcompaniescompanyuuidholidaypaypolicyremoveresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## preview_paid_holidays

Preview a company's paid holidays

scope: `holiday_pay_policies:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-companies-company_uuid-paid_holidays" method="get" path="/v1/companies/{company_uuid}/paid_holidays" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.holiday_pay_policies.preview_paid_holidays(company_uuid: '<id>', request_body: Models::Operations::GetCompaniesCompanyUuidPaidHolidaysRequestBody.new(
  year: '2023',
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.paid_holidays.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::GetCompaniesCompanyUuidPaidHolidaysRequestBody](../../models/operations/getcompaniescompanyuuidpaidholidaysrequestbody.md)                                                                              | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetCompaniesCompanyUuidPaidHolidaysResponse)](../../models/operations/getcompaniescompanyuuidpaidholidaysresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |