# FederalTaxDetails
(*federal_tax_details*)

## Overview

### Available Operations

* [get](#get) - Get Federal Tax Details
* [update](#update) - Update Federal Tax Details

## get

Fetches attributes relevant for a company's federal taxes.

scope: `company_federal_taxes:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-federal_tax_details" method="get" path="/v1/companies/{company_id}/federal_tax_details" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.federal_tax_details.get(company_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.federal_tax_details.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdFederalTaxDetailsResponse)](../../models/operations/getv1companiescompanyidfederaltaxdetailsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update

Updates attributes relevant for a company's federal taxes.
This information is required is to onboard a company for use with Gusto Embedded Payroll.

scope: `company_federal_taxes:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-companies-company_id-federal_tax_details" method="put" path="/v1/companies/{company_id}/federal_tax_details" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.federal_tax_details.update(company_id: '<id>', request_body: Models::Operations::PutV1CompaniesCompanyIdFederalTaxDetailsRequestBody.new(
  legal_name: 'Acme Corp.',
  tax_payer_type: Models::Operations::TaxPayerType::LLP,
  filing_form: Models::Operations::FilingForm::NINE_HUNDRED_AND_FORTY_FOUR,
  taxable_as_scorp: false,
  version: '6cb95e00540706ca48d4577b3c839fbe',
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.federal_tax_details.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1CompaniesCompanyIdFederalTaxDetailsRequestBody](../../models/operations/putv1companiescompanyidfederaltaxdetailsrequestbody.md)                                                                    | :heavy_check_mark:                                                                                                                                                                                                           | Attributes related to federal tax details that can be updated via this endpoint include:                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1CompaniesCompanyIdFederalTaxDetailsResponse)](../../models/operations/putv1companiescompanyidfederaltaxdetailsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |