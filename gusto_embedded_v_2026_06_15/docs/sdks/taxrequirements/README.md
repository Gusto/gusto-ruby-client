# TaxRequirements

## Overview

### Available Operations

* [get_all](#get_all) - Get all tax requirements for a company
* [get](#get) - Get tax requirements for a state
* [update_state](#update_state) - Update tax requirements for a state

## get_all

Retrieves all states for which a company has tax requirements, along with a boolean indicating whether tax setup
is complete for each state. Use this to determine which states still need tax setup during company onboarding.

scope: `company_tax_requirements:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_uuid-tax_requirements" method="get" path="/v1/companies/{company_uuid}/tax_requirements" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.tax_requirements.get_all(company_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1CompaniesCompanyUuidTaxRequirementsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.tax_requirement_states_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompaniesCompanyUuidTaxRequirementsHeaderXGustoAPIVersion)](../../models/operations/getv1companiescompanyuuidtaxrequirementsheaderxgustoapiversion.md)                                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyUuidTaxRequirementsResponse)](../../models/operations/getv1companiescompanyuuidtaxrequirementsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## get

Retrieves the detailed tax requirements for a specific state. The response includes requirement sets grouped by
category (e.g., registrations, tax rates, deposit schedules), each containing individual requirements with their
current values, labels, and metadata describing the expected input format.

Use this to build dynamic UIs for tax setup or to read the current tax configuration for a state.

scope: `company_tax_requirements:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_uuid-tax_requirements-state" method="get" path="/v1/companies/{company_uuid}/tax_requirements/{state}" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.tax_requirements.get(company_uuid: '<id>', state: 'CA', x_gusto_api_version: Models::Operations::GetV1CompaniesCompanyUuidTaxRequirementsStateHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.tax_requirements_state.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  | Example                                                                                                                                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |                                                                                                                                                                                                                              |
| `state`                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The two-letter state abbreviation                                                                                                                                                                                            | CA                                                                                                                                                                                                                           |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompaniesCompanyUuidTaxRequirementsStateHeaderXGustoAPIVersion)](../../models/operations/getv1companiescompanyuuidtaxrequirementsstateheaderxgustoapiversion.md)                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |                                                                                                                                                                                                                              |
| `scheduling`                                                                                                                                                                                                                 | *T.nilable(T::Boolean)*                                                                                                                                                                                                      | :heavy_minus_sign:                                                                                                                                                                                                           | When true, return "new" requirement sets with valid `effective_from` dates that are available to save new effective-dated values.                                                                                            |                                                                                                                                                                                                                              |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyUuidTaxRequirementsStateResponse)](../../models/operations/getv1companiescompanyuuidtaxrequirementsstateresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## update_state

Updates the tax requirement answers for a specific state. Submit answers to the requirement questions returned
by [GET /v1/companies/{company_uuid}/tax_requirements/{state}](ref:get-v1-companies-company_uuid-tax_requirements-state).

### Prerequisites

1. Retrieve current requirements via [GET /v1/companies/{company_uuid}/tax_requirements/{state}](ref:get-v1-companies-company_uuid-tax_requirements-state)
2. Ensure that each requirement set that you're updating includes the correct `key`, `state`, and `effective_from` values from the GET response

scope: `company_tax_requirements:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-companies-company_uuid-tax_requirements-state" method="put" path="/v1/companies/{company_uuid}/tax_requirements/{state}" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.tax_requirements.update_state(company_uuid: '<id>', state: 'CA', request_body: Models::Operations::PutV1CompaniesCompanyUuidTaxRequirementsStateRequestBody.new(
  requirement_sets: [
    Models::Shared::TaxRequirementSetUpdate.new(
      key: 'registrations',
      state: 'GA',
      effective_from: '2022-01-01',
      requirements: [
        Models::Shared::Requirements.new(
          key: '71653ec0-00b5-4c66-a58b-22ecf21704c5',
          value: '1233214-AB'
        ),
      ]
    ),
  ]
), x_gusto_api_version: Models::Operations::PutV1CompaniesCompanyUuidTaxRequirementsStateHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  | Example                                                                                                                                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |                                                                                                                                                                                                                              |
| `state`                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The two-letter state abbreviation                                                                                                                                                                                            | CA                                                                                                                                                                                                                           |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1CompaniesCompanyUuidTaxRequirementsStateRequestBody](../../models/operations/putv1companiescompanyuuidtaxrequirementsstaterequestbody.md)                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |                                                                                                                                                                                                                              |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1CompaniesCompanyUuidTaxRequirementsStateHeaderXGustoAPIVersion)](../../models/operations/putv1companiescompanyuuidtaxrequirementsstateheaderxgustoapiversion.md)                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |                                                                                                                                                                                                                              |

### Response

**[T.nilable(Models::Operations::PutV1CompaniesCompanyUuidTaxRequirementsStateResponse)](../../models/operations/putv1companiescompanyuuidtaxrequirementsstateresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |