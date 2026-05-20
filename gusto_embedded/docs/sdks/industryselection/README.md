# IndustrySelection

## Overview

### Available Operations

* [get](#get) - Get a company industry selection
* [update](#update) - Update a company industry selection

## get

Returns the industry classification for a company, including NAICS code, SIC codes, and industry title.

scope: `companies:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-company-industry" method="get" path="/v1/companies/{company_id}/industry_selection" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.industry_selection.get(company_id: '<id>', x_gusto_api_version: Models::Operations::GetV1CompanyIndustryHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.industry.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompanyIndustryHeaderXGustoAPIVersion)](../../models/operations/getv1companyindustryheaderxgustoapiversion.md)                                                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompanyIndustryResponse)](../../models/operations/getv1companyindustryresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## update

Update the industry classification for a company by passing in a [NAICS code](https://www.naics.com).

Optionally provide an industry title and [SIC codes](https://siccode.com/). If you do not provide SIC codes,
we will use the NAICS code to perform an internal lookup.

Our UI leverages [Middesk API](https://docs.middesk.com/reference/introduction) to determine industry
classification codes.

scope: `companies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-company-industry" method="put" path="/v1/companies/{company_id}/industry_selection" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.industry_selection.update(company_id: '<id>', company_industry_selection_required_body: Models::Shared::CompanyIndustrySelectionRequiredBody.new(
  title: 'Computer Training',
  naics_code: '611420',
  sic_codes: [
    '8243',
  ]
), x_gusto_api_version: Models::Operations::PutV1CompanyIndustryHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.industry.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `company_industry_selection_required_body`                                                                                                                                                                                   | [Models::Shared::CompanyIndustrySelectionRequiredBody](../../models/shared/companyindustryselectionrequiredbody.md)                                                                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1CompanyIndustryHeaderXGustoAPIVersion)](../../models/operations/putv1companyindustryheaderxgustoapiversion.md)                                                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1CompanyIndustryResponse)](../../models/operations/putv1companyindustryresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |