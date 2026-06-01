# Companies.Suspensions

## Overview

### Available Operations

* [get](#get) - Get suspensions for this company
* [suspend](#suspend) - Suspend a company's account

## get

Get existing suspension records for this company. A company may have multiple suspension records if they have suspended their Gusto account more than once.

>📘 To check if company is already suspended
>
> To determine if a company is _currently_ suspended, use the `is_suspended` and `company_status` fields in the [Get a company](https://docs.gusto.com/embedded-payroll/reference/get-v1-companies) endpoint.

scope: `company_suspensions:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-companies-company_uuid-suspensions" method="get" path="/v1/companies/{company_uuid}/suspensions" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.companies.suspensions.get(company_uuid: '<id>', x_gusto_api_version: Models::Operations::GetCompaniesCompanyUuidSuspensionsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.company_suspension_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetCompaniesCompanyUuidSuspensionsHeaderXGustoAPIVersion)](../../models/operations/getcompaniescompanyuuidsuspensionsheaderxgustoapiversion.md)                                               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetCompaniesCompanyUuidSuspensionsResponse)](../../models/operations/getcompaniescompanyuuidsuspensionsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## suspend

Use this endpoint to suspend a company. After suspension, company will no longer be able to run payroll but will retain access to their information, such as retrieving employee info or retrieving past payrolls.

scope: `company_suspensions:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-companies-company_uuid-suspensions" method="post" path="/v1/companies/{company_uuid}/suspensions" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.companies.suspensions.suspend(company_uuid: '<id>', request_body: Models::Operations::PostCompaniesCompanyUuidSuspensionsRequestBody.new(
  file_quarterly_forms: true,
  file_yearly_forms: false,
  reconcile_tax_method: Models::Operations::ReconcileTaxMethod::PAY_TAXES,
  reason: Models::Operations::Reason::ACQUIRED
), x_gusto_api_version: Models::Operations::PostCompaniesCompanyUuidSuspensionsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.company_suspension.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostCompaniesCompanyUuidSuspensionsRequestBody](../../models/operations/postcompaniescompanyuuidsuspensionsrequestbody.md)                                                                              | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostCompaniesCompanyUuidSuspensionsHeaderXGustoAPIVersion)](../../models/operations/postcompaniescompanyuuidsuspensionsheaderxgustoapiversion.md)                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostCompaniesCompanyUuidSuspensionsResponse)](../../models/operations/postcompaniescompanyuuidsuspensionsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |