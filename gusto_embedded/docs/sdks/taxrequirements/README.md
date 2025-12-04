# TaxRequirements
(*tax_requirements*)

## Overview

### Available Operations

* [get](#get) - Get State Tax Requirements
* [update_state](#update_state) - Update State Tax Requirements
* [get_all](#get_all) - Get All Tax Requirement States

## get

Get all tax requirements for a given state.

### Metadata Examples

```json select
{
  "type": "select",
  "options": [
    { "label": "Semiweekly",  value: "Semi-weekly" },
    { "label": "Monthly",  value: "Monthly" },
    { "label": "Quarterly",  value: "Quarterly" },
  ]
}
```
```json radio
{
  "type": "radio",
  "options": [
    { "label": "No, we cannot reimburse",  value: false, short_label: "Not Reimbursable" },
    { "label": "Yes, we can reimburse",  value: true, short_label: "Reimbursable" },
  ]
}
```
```json account_number
{
  "type": "account_number",
  "mask": "######-##',
  "prefix": null
}
```
```json tax_rate
{
  "type": "tax_rate",
  "validation": {
    "type": "min_max",
    "min": "0.0004",
    "max": "0.081"
  }
}
```

scope: `company_tax_requirements:read`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_uuid-tax_requirements-state" method="get" path="/v1/companies/{company_uuid}/tax_requirements/{state}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.tax_requirements.get(company_uuid: '<id>', state: 'South Dakota', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.tax_requirements_state.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `state`                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | 2-letter US state abbreviation                                                                                                                                                                                               |
| `scheduling`                                                                                                                                                                                                                 | *T.nilable(T::Boolean)*                                                                                                                                                                                                      | :heavy_minus_sign:                                                                                                                                                                                                           | When true, return "new" requirement sets with valid `effective_from` dates that are available to save new effective dated values.                                                                                            |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyUuidTaxRequirementsStateResponse)](../../models/operations/getv1companiescompanyuuidtaxrequirementsstateresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_state

Update State Tax Requirements

scope: `company_tax_requirements:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-companies-company_uuid-tax_requirements-state" method="put" path="/v1/companies/{company_uuid}/tax_requirements/{state}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.tax_requirements.update_state(company_uuid: '<id>', state: 'Tennessee', request_body: Models::Operations::PutV1CompaniesCompanyUuidTaxRequirementsStateRequestBody.new(
  requirement_sets: [
    Models::Operations::RequirementSets.new(
      key: 'registrations',
      effective_from: nil,
      state: 'GA',
      requirements: [
        Models::Operations::Requirements.new(
          key: '71653ec0-00b5-4c66-a58b-22ecf21704c5',
          value: '1233214-AB',
        ),
        Models::Operations::Requirements.new(
          key: '6c0911ab-5860-412e-bdef-6437cd881df5',
          value: '474747-22',
        ),
      ],
    ),
    Models::Operations::RequirementSets.new(
      key: 'taxrates',
      effective_from: '2022-01-01',
      state: 'GA',
      requirements: [
        Models::Operations::Requirements.new(
          key: 'e0ac2284-8d30-4100-ae23-f85f9574868b',
          value: '0.05',
        ),
      ],
    ),
    Models::Operations::RequirementSets.new(
      key: 'depositschedules',
      effective_from: '2022-01-01',
      state: 'GA',
      requirements: [
        Models::Operations::Requirements.new(
          key: '6ddfcbeb-94d3-4003-bfc2-8c6e1ca9f70c',
          value: 'Semi-weekly',
        ),
      ],
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
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `state`                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | 2-letter US state abbreviation                                                                                                                                                                                               |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1CompaniesCompanyUuidTaxRequirementsStateRequestBody](../../models/operations/putv1companiescompanyuuidtaxrequirementsstaterequestbody.md)                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1CompaniesCompanyUuidTaxRequirementsStateResponse)](../../models/operations/putv1companiescompanyuuidtaxrequirementsstateresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## get_all

Returns objects describing the states that have tax requirements for the company

scope: `company_tax_requirements:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_uuid-tax_requirements" method="get" path="/v1/companies/{company_uuid}/tax_requirements" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.tax_requirements.get_all(company_uuid: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.response_bodies.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyUuidTaxRequirementsResponse)](../../models/operations/getv1companiescompanyuuidtaxrequirementsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |