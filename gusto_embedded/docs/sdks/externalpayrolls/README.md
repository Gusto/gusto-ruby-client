# ExternalPayrolls

## Overview

### Available Operations

* [get](#get) - Get external payrolls for a company
* [create](#create) - Create an external payroll for a company
* [retrieve](#retrieve) - Get an external payroll
* [update](#update) - Update an external payroll
* [delete](#delete) - Delete an external payroll
* [calculate_taxes](#calculate_taxes) - Get tax suggestions for an external payroll
* [list_tax_liabilities](#list_tax_liabilities) - Get tax liabilities
* [update_tax_liabilities](#update_tax_liabilities) - Update tax liabilities
* [finalize_tax_liabilities](#finalize_tax_liabilities) - Finalize tax liabilities options and convert into processed payrolls

## get

Get external payrolls for a company.

scope: `external_payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-company-external-payrolls" method="get" path="/v1/companies/{company_uuid}/external_payrolls" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.external_payrolls.get(company_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1CompanyExternalPayrollsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.external_payroll_basics.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompanyExternalPayrollsHeaderXGustoAPIVersion)](../../models/operations/getv1companyexternalpayrollsheaderxgustoapiversion.md)                                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `page`                                                                                                                                                                                                                       | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | The page that is requested. When unspecified, will load all objects unless endpoint forces pagination.                                                                                                                       |
| `per`                                                                                                                                                                                                                        | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Number of objects per page. For majority of endpoints will default to 25                                                                                                                                                     |

### Response

**[T.nilable(Models::Operations::GetV1CompanyExternalPayrollsResponse)](../../models/operations/getv1companyexternalpayrollsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## create

Creates a new external payroll for a company.

scope: `external_payrolls:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-external-payroll" method="post" path="/v1/companies/{company_uuid}/external_payrolls" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.external_payrolls.create(company_uuid: '<id>', external_payroll_create_request: Models::Shared::ExternalPayrollCreateRequest.new(
  check_date: Date.parse('2022-06-03'),
  payment_period_start_date: Date.parse('2022-05-15'),
  payment_period_end_date: Date.parse('2022-05-30')
), x_gusto_api_version: Models::Operations::PostV1ExternalPayrollHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.external_payroll.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `external_payroll_create_request`                                                                                                                                                                                            | [Models::Shared::ExternalPayrollCreateRequest](../../models/shared/externalpayrollcreaterequest.md)                                                                                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1ExternalPayrollHeaderXGustoAPIVersion)](../../models/operations/postv1externalpayrollheaderxgustoapiversion.md)                                                                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1ExternalPayrollResponse)](../../models/operations/postv1externalpayrollresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

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
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.external_payrolls.retrieve(company_uuid: '<id>', external_payroll_id: '<id>', x_gusto_api_version: Models::Operations::GetV1ExternalPayrollHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.external_payroll.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `external_payroll_id`                                                                                                                                                                                                        | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the external payroll                                                                                                                                                                                             |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1ExternalPayrollHeaderXGustoAPIVersion)](../../models/operations/getv1externalpayrollheaderxgustoapiversion.md)                                                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1ExternalPayrollResponse)](../../models/operations/getv1externalpayrollresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## update

Update an external payroll with a list of external payroll items.

scope: `external_payrolls:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-external-payroll" method="put" path="/v1/companies/{company_uuid}/external_payrolls/{external_payroll_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.external_payrolls.update(company_uuid: '<id>', external_payroll_id: '<id>', external_payroll_update_request: Models::Shared::ExternalPayrollUpdateRequest.new(
  external_payroll_items: [
    Models::Shared::ExternalPayrollUpdateRequestExternalPayrollItems.new(
      employee_uuid: '44f7cba9-7a3d-4f08-b7bd-6fcf5211f8ca',
      earnings: [
        Models::Shared::ExternalPayrollUpdateRequestEarnings.new(
          earning_type: Models::Shared::ExternalPayrollUpdateRequestEarningType::COMPANY_PAY_TYPE,
          earning_id: 1,
          amount: '10000.00',
          hours: '80.0'
        ),
      ],
      benefits: [
        Models::Shared::ExternalPayrollUpdateRequestBenefits.new(
          benefit_id: 22,
          company_contribution_amount: '100.00',
          employee_deduction_amount: '50.00'
        ),
      ],
      taxes: [
        Models::Shared::ExternalPayrollUpdateRequestTaxes.new(
          tax_id: 1,
          amount: '400.00'
        ),
      ]
    ),
  ]
), x_gusto_api_version: Models::Operations::PutV1ExternalPayrollHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.external_payroll.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `external_payroll_id`                                                                                                                                                                                                        | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the external payroll                                                                                                                                                                                             |
| `external_payroll_update_request`                                                                                                                                                                                            | [Models::Shared::ExternalPayrollUpdateRequest](../../models/shared/externalpayrollupdaterequest.md)                                                                                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1ExternalPayrollHeaderXGustoAPIVersion)](../../models/operations/putv1externalpayrollheaderxgustoapiversion.md)                                                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1ExternalPayrollResponse)](../../models/operations/putv1externalpayrollresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

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
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.external_payrolls.delete(company_uuid: '<id>', external_payroll_id: '<id>', x_gusto_api_version: Models::Operations::DeleteV1ExternalPayrollHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `external_payroll_id`                                                                                                                                                                                                        | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the external payroll                                                                                                                                                                                             |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::DeleteV1ExternalPayrollHeaderXGustoAPIVersion)](../../models/operations/deletev1externalpayrollheaderxgustoapiversion.md)                                                                     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1ExternalPayrollResponse)](../../models/operations/deletev1externalpayrollresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## calculate_taxes

Get tax suggestions for an external payroll. Earnings and/or benefits data must be saved prior to the calculation in order to retrieve accurate tax calculation.

scope: `external_payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-external-payroll-calculate-taxes" method="get" path="/v1/companies/{company_uuid}/external_payrolls/{external_payroll_id}/calculate_taxes" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.external_payrolls.calculate_taxes(company_uuid: '<id>', external_payroll_id: '<id>', x_gusto_api_version: Models::Operations::GetV1ExternalPayrollCalculateTaxesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.external_payroll_tax_suggestions.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `external_payroll_id`                                                                                                                                                                                                        | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the external payroll                                                                                                                                                                                             |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1ExternalPayrollCalculateTaxesHeaderXGustoAPIVersion)](../../models/operations/getv1externalpayrollcalculatetaxesheaderxgustoapiversion.md)                                               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1ExternalPayrollCalculateTaxesResponse)](../../models/operations/getv1externalpayrollcalculatetaxesresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

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
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.external_payrolls.list_tax_liabilities(company_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1TaxLiabilitiesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.tax_liabilities_selections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1TaxLiabilitiesHeaderXGustoAPIVersion)](../../models/operations/getv1taxliabilitiesheaderxgustoapiversion.md)                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1TaxLiabilitiesResponse)](../../models/operations/getv1taxliabilitiesresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

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
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.external_payrolls.update_tax_liabilities(company_uuid: '<id>', tax_liability_selections_request: Models::Shared::TaxLiabilitySelectionsRequest.new(
  liability_selections: []
), x_gusto_api_version: Models::Operations::PutV1TaxLiabilitiesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.tax_liabilities_selections.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `tax_liability_selections_request`                                                                                                                                                                                           | [Models::Shared::TaxLiabilitySelectionsRequest](../../models/shared/taxliabilityselectionsrequest.md)                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1TaxLiabilitiesHeaderXGustoAPIVersion)](../../models/operations/putv1taxliabilitiesheaderxgustoapiversion.md)                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1TaxLiabilitiesResponse)](../../models/operations/putv1taxliabilitiesresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## finalize_tax_liabilities

Finalizes tax liabilities for a company. All external payrolls edit action will be disabled.

### Asynchronous processing
This endpoint triggers an asynchronous operation. The external payrolls will be processed in the background after finalization.

scope: `external_payrolls:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-tax-liabilities-finish" method="put" path="/v1/companies/{company_uuid}/external_payrolls/tax_liabilities/finish" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.external_payrolls.finalize_tax_liabilities(company_uuid: '<id>', x_gusto_api_version: Models::Operations::PutV1TaxLiabilitiesFinishHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1TaxLiabilitiesFinishHeaderXGustoAPIVersion)](../../models/operations/putv1taxliabilitiesfinishheaderxgustoapiversion.md)                                                                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1TaxLiabilitiesFinishResponse)](../../models/operations/putv1taxliabilitiesfinishresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |