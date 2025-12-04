# ExternalPayrolls
(*external_payrolls*)

## Overview

### Available Operations

* [create](#create) - Create a new external payroll for a company
* [get](#get) - Get external payrolls for a company
* [retrieve](#retrieve) - Get an external payroll
* [delete](#delete) - Delete an external payroll
* [update](#update) - Update an external payroll
* [calculate_taxes](#calculate_taxes) - Get tax suggestions for an external payroll
* [list_tax_liabilities](#list_tax_liabilities) - Get tax liabilities
* [update_tax_liabilities](#update_tax_liabilities) - Update tax liabilities
* [finalize_tax_liabilities](#finalize_tax_liabilities) - Finalize tax liabilities options and convert into processed payrolls

## create

Creates a new external payroll for the company.

scope: `external_payrolls:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-external-payroll" method="post" path="/v1/companies/{company_uuid}/external_payrolls" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.external_payrolls.create(company_uuid: '<id>', request_body: Models::Operations::PostV1ExternalPayrollRequestBody.new(
  check_date: '2022-06-01',
  payment_period_start_date: '2022-05-15',
  payment_period_end_date: '2022-05-30',
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.external_payroll.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostV1ExternalPayrollRequestBody](../../models/operations/postv1externalpayrollrequestbody.md)                                                                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1ExternalPayrollResponse)](../../models/operations/postv1externalpayrollresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## get

Get an external payroll for a given company.

scope: `external_payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-company-external-payrolls" method="get" path="/v1/companies/{company_uuid}/external_payrolls" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.external_payrolls.get(company_uuid: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.external_payroll_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompanyExternalPayrollsResponse)](../../models/operations/getv1companyexternalpayrollsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## retrieve

Get an external payroll for a given company.

scope: `external_payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-external-payroll" method="get" path="/v1/companies/{company_uuid}/external_payrolls/{external_payroll_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.external_payrolls.retrieve(company_uuid: '<id>', external_payroll_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.external_payroll.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `external_payroll_id`                                                                                                                                                                                                        | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the external payroll                                                                                                                                                                                             |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1ExternalPayrollResponse)](../../models/operations/getv1externalpayrollresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## delete

Delete an external payroll.

scope: `external_payrolls:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-external-payroll" method="delete" path="/v1/companies/{company_uuid}/external_payrolls/{external_payroll_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.external_payrolls.delete(company_uuid: '<id>', external_payroll_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `external_payroll_id`                                                                                                                                                                                                        | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the external payroll                                                                                                                                                                                             |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1ExternalPayrollResponse)](../../models/operations/deletev1externalpayrollresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update

Update an external payroll with a list of external payroll items

scope: `external_payrolls:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-external-payroll" method="put" path="/v1/companies/{company_uuid}/external_payrolls/{external_payroll_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.external_payrolls.update(company_uuid: '<id>', external_payroll_id: '<id>', request_body: Models::Operations::PutV1ExternalPayrollRequestBody.new(
  replace_fields: true,
  external_payroll_items: [
    Models::Operations::ExternalPayrollItems.new(
      employee_uuid: '403c6ee3-5f58-40ef-a117-ff7175cd9ee3',
      earnings: [
        Models::Operations::Earnings.new(
          hours: '0.0',
          amount: '200.00',
          earning_id: 1,
          earning_type: Models::Operations::EarningType::COMPANY_PAY_TYPE,
        ),
        Models::Operations::Earnings.new(
          hours: '0.0',
          amount: '5000.00',
          earning_id: 2,
          earning_type: Models::Operations::EarningType::COMPANY_EARNING_TYPE,
        ),
      ],
      benefits: [
        Models::Operations::Benefits.new(
          company_contribution_amount: '300.0',
          employee_deduction_amount: '300.0',
          benefit_id: 10,
        ),
        Models::Operations::Benefits.new(
          company_contribution_amount: '50.0',
          employee_deduction_amount: '100.0',
          benefit_id: 21,
        ),
      ],
      taxes: [
        Models::Operations::Taxes.new(
          amount: '20.0',
          tax_id: 1,
        ),
        Models::Operations::Taxes.new(
          amount: '100.0',
          tax_id: 2,
        ),
      ],
    ),
  ],
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.external_payroll.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `external_payroll_id`                                                                                                                                                                                                        | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the external payroll                                                                                                                                                                                             |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1ExternalPayrollRequestBody](../../models/operations/putv1externalpayrollrequestbody.md)                                                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1ExternalPayrollResponse)](../../models/operations/putv1externalpayrollresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## calculate_taxes

Get tax suggestions for an external payroll. Earnings and/or benefits
data must be saved prior to the calculation in order to retrieve accurate
tax calculation.

scope: `external_payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-external-payroll-calculate-taxes" method="get" path="/v1/companies/{company_uuid}/external_payrolls/{external_payroll_id}/calculate_taxes" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.external_payrolls.calculate_taxes(company_uuid: '<id>', external_payroll_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.external_payroll_tax_suggestions_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `external_payroll_id`                                                                                                                                                                                                        | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the external payroll                                                                                                                                                                                             |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1ExternalPayrollCalculateTaxesResponse)](../../models/operations/getv1externalpayrollcalculatetaxesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list_tax_liabilities

Get tax liabilities from aggregate external payrolls for a company.

scope: `external_payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-tax-liabilities" method="get" path="/v1/companies/{company_uuid}/external_payrolls/tax_liabilities" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.external_payrolls.list_tax_liabilities(company_uuid: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.tax_liabilities_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1TaxLiabilitiesResponse)](../../models/operations/getv1taxliabilitiesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_tax_liabilities

Update tax liabilities for a company.

scope: `external_payrolls:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-tax-liabilities" method="put" path="/v1/companies/{company_uuid}/external_payrolls/tax_liabilities" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.external_payrolls.update_tax_liabilities(company_uuid: '<id>', request_body: Models::Operations::PutV1TaxLiabilitiesRequestBody.new(
  liability_selections: [
    Models::Operations::LiabilitySelections.new(
      tax_id: 1,
      last_unpaid_external_payroll_uuid: '7985032c-ee3a-4e98-af27-d56551eb5f1c',
      unpaid_liability_amount: 50.0,
    ),
    Models::Operations::LiabilitySelections.new(
      tax_id: 2,
      last_unpaid_external_payroll_uuid: '5ed14dbb-958f-47c8-b16e-c4fed82dc486',
      unpaid_liability_amount: 400.0,
    ),
    Models::Operations::LiabilitySelections.new(
      tax_id: 8,
      last_unpaid_external_payroll_uuid: nil,
      unpaid_liability_amount: 0.0,
    ),
  ],
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.tax_liabilities_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1TaxLiabilitiesRequestBody](../../models/operations/putv1taxliabilitiesrequestbody.md)                                                                                                              | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1TaxLiabilitiesResponse)](../../models/operations/putv1taxliabilitiesresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## finalize_tax_liabilities

Finalizes tax liabilities for a company. All external payrolls edit action will be disabled.

scope: `external_payrolls:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-tax-liabilities-finish" method="put" path="/v1/companies/{company_uuid}/external_payrolls/tax_liabilities/finish" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.external_payrolls.finalize_tax_liabilities(company_uuid: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

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

**[T.nilable(Models::Operations::PutV1TaxLiabilitiesFinishResponse)](../../models/operations/putv1taxliabilitiesfinishresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |