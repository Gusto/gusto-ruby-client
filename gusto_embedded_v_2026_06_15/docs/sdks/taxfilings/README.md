# TaxFilings

## Overview

### Available Operations

* [get_tax_filings](#get_tax_filings) - Get all tax filings for a company
* [get_tax_filing](#get_tax_filing) - Get a tax filing for a company

## get_tax_filings

Fetches all tax filing obligations for a company.

scope: `tax_filings:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-tax-filings" method="get" path="/v1/companies/{company_uuid}/tax_filings" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)

req = Models::Operations::GetTaxFilingsRequest.new(
  company_uuid: '<id>',
  sort_by: 'period_start:asc'
)
res = s.tax_filings.get_tax_filings(request: req)

unless res.tax_filing_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Models::Operations::GetTaxFilingsRequest](../../models/operations/gettaxfilingsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |

### Response

**[T.nilable(Models::Operations::GetTaxFilingsResponse)](../../models/operations/gettaxfilingsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_tax_filing

Fetches a single tax filing obligation for a company by UUID.

scope: `tax_filings:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-tax-filing" method="get" path="/v1/companies/{company_uuid}/tax_filings/{uuid}" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.tax_filings.get_tax_filing(company_uuid: '<id>', uuid: '3ed1e5d8-2fdf-462e-a315-75ac18749bb8', x_gusto_api_version: Models::Operations::GetTaxFilingHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.tax_filing.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `uuid`                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the tax filing                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetTaxFilingHeaderXGustoAPIVersion)](../../models/operations/gettaxfilingheaderxgustoapiversion.md)                                                                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetTaxFilingResponse)](../../models/operations/gettaxfilingresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |