# TreasuryTippedOccupationCodes

## Overview

### Available Operations

* [get_companies_company_uuid_treasury_tipped_occupation_codes](#get_companies_company_uuid_treasury_tipped_occupation_codes) - Get Treasury Tipped Occupation Codes

## get_companies_company_uuid_treasury_tipped_occupation_codes

Returns the full list of 71 U.S. Treasury Tipped Occupation Codes (TTOCs),
optionally filtered by category. Reference data; the response is identical
across companies and cached for one day (Cache-Control: max-age=86400).

scope: `jobs:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-companies-company_uuid-treasury_tipped_occupation_codes" method="get" path="/v1/companies/{company_uuid}/treasury_tipped_occupation_codes" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.treasury_tipped_occupation_codes.get_companies_company_uuid_treasury_tipped_occupation_codes(company_uuid: '<id>', x_gusto_api_version: Models::Operations::GetCompaniesCompanyUuidTreasuryTippedOccupationCodesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.treasury_tipped_occupation_code_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                               | Type                                                                                                                                                                                                                                    | Required                                                                                                                                                                                                                                | Description                                                                                                                                                                                                                             |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                                          | *::String*                                                                                                                                                                                                                              | :heavy_check_mark:                                                                                                                                                                                                                      | The UUID of the company                                                                                                                                                                                                                 |
| `x_gusto_api_version`                                                                                                                                                                                                                   | [T.nilable(Models::Operations::GetCompaniesCompanyUuidTreasuryTippedOccupationCodesHeaderXGustoAPIVersion)](../../models/operations/getcompaniescompanyuuidtreasurytippedoccupationcodesheaderxgustoapiversion.md)                      | :heavy_minus_sign:                                                                                                                                                                                                                      | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.            |
| `category`                                                                                                                                                                                                                              | *T.nilable(::String)*                                                                                                                                                                                                                   | :heavy_minus_sign:                                                                                                                                                                                                                      | Optional category filter. One of: Beverage & Food Service, Entertainment & Events, Hospitality & Guest Services, Home Services, Personal Services, Personal Appearance & Wellness, Recreation & Instruction, Transportation & Delivery. |

### Response

**[T.nilable(Models::Operations::GetCompaniesCompanyUuidTreasuryTippedOccupationCodesResponse)](../../models/operations/getcompaniescompanyuuidtreasurytippedoccupationcodesresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |