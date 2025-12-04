# Payrolls
(*payrolls*)

## Overview

### Available Operations

* [list](#list) - Get all payrolls for a company
* [create_off_cycle](#create_off_cycle) - Create an off-cycle payroll
* [get_approved_reversals](#get_approved_reversals) - Get approved payroll reversals
* [get](#get) - Get a single payroll
* [update](#update) - Update a payroll by ID
* [delete](#delete) - Delete a payroll
* [prepare](#prepare) - Prepare a payroll for update
* [get_receipt](#get_receipt) - Get a single payroll receipt
* [get_blockers](#get_blockers) - Get all payroll blockers for a company
* [cancel](#cancel) - Cancel a payroll
* [get_pay_stub](#get_pay_stub) - Get an employee pay stub (pdf)
* [get_pay_stubs](#get_pay_stubs) - Get an employee's pay stubs
* [generate_printable_checks](#generate_printable_checks) - Generate printable payroll checks (pdf)
* [get_v1_companies_company_id_payrolls_id_partner_disbursements](#get_v1_companies_company_id_payrolls_id_partner_disbursements) - Get partner disbursements for a payroll
* [patch_v1_companies_company_id_payrolls_id_partner_disbursements](#patch_v1_companies_company_id_payrolls_id_partner_disbursements) - Update partner disbursements for a payroll

## list

Returns a list of payrolls for a company. You can change the payrolls returned by updating the processing_status, payroll_types, start_date, & end_date params.

By default, will return processed, regular payrolls for the past 6 months.

Notes:
* Dollar amounts are returned as string representations of numeric decimals, are represented to the cent.
* end_date can be at most 3 months in the future and start_date and end_date can't be more than 1 year apart.

scope: `payrolls:read`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-payrolls" method="get" path="/v1/companies/{company_id}/payrolls" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

req = Models::Operations::GetV1CompaniesCompanyIdPayrollsRequest.new(
  company_id: '<id>',
  start_date: '2020-01-31',
  end_date: '2020-01-31',
  date_filter_by: Models::Operations::DateFilterBy::CHECK_DATE,
  sort_order: Models::Operations::SortOrder::ASC,
)

res = s.payrolls.list(request: req)

unless res.payroll_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                       | Type                                                                                                                            | Required                                                                                                                        | Description                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                       | [Models::Operations::GetV1CompaniesCompanyIdPayrollsRequest](../../models/operations/getv1companiescompanyidpayrollsrequest.md) | :heavy_check_mark:                                                                                                              | The request object to use for the request.                                                                                      |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdPayrollsResponse)](../../models/operations/getv1companiescompanyidpayrollsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 404                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## create_off_cycle

Creates a new, unprocessed, off-cycle payroll.

## `off_cycle_reason`
By default:
- External benefits and deductions will be included when the `off_cycle_reason` is set to `Correction`.
- All benefits and deductions are blocked when the `off_cycle_reason` is set to `Bonus`.

These elections can be overridden with the `skip_regular_deductions` boolean.

scope: `payrolls:run`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-companies-company_id-payrolls" method="post" path="/v1/companies/{company_id}/payrolls" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.payrolls.create_off_cycle(company_id: '<id>', x_gusto_api_version: Models::Operations::PostV1CompaniesCompanyIdPayrollsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.payroll_prepared.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1CompaniesCompanyIdPayrollsHeaderXGustoAPIVersion)](../../models/operations/postv1companiescompanyidpayrollsheaderxgustoapiversion.md)                                                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `request_body`                                                                                                                                                                                                               | [T.nilable(Models::Operations::PostV1CompaniesCompanyIdPayrollsRequestBody)](../../models/operations/postv1companiescompanyidpayrollsrequestbody.md)                                                                         | :heavy_minus_sign:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |

### Response

**[T.nilable(Models::Operations::PostV1CompaniesCompanyIdPayrollsResponse)](../../models/operations/postv1companiescompanyidpayrollsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 404, 422                                       | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## get_approved_reversals

Returns all approved Payroll Reversals for a Company.

scope: `payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-payroll_reversals" method="get" path="/v1/companies/{company_id}/payroll_reversals" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.payrolls.get_approved_reversals(company_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.payroll_reversal.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `page`                                                                                                                                                                                                                       | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | The page that is requested. When unspecified, will load all objects unless endpoint forces pagination.                                                                                                                       |
| `per`                                                                                                                                                                                                                        | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Number of objects per page. For majority of endpoints will default to 25                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdPayrollReversalsResponse)](../../models/operations/getv1companiescompanyidpayrollreversalsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get

Returns a payroll. If payroll is calculated or processed, will return employee_compensations and totals. Results are paginated, with a maximum page size of 100 employee_compensations.

Notes:
* Hour and dollar amounts are returned as string representations of numeric decimals.
* Hours are represented to the thousands place; dollar amounts are represented to the cent.
* Every eligible compensation is returned for each employee. If no data has yet be inserted for a given field, it defaults to “0.00” (for fixed amounts) or “0.000” (for hours ).
* When include parameter with benefits value is passed, employee_benefits:read scope is required to return benefits
  * Benefits containing PHI are only visible with the `employee_benefits:read:phi` scope

scope: `payrolls:read`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-payrolls-payroll_id" method="get" path="/v1/companies/{company_id}/payrolls/{payroll_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

req = Models::Operations::GetV1CompaniesCompanyIdPayrollsPayrollIdRequest.new(
  company_id: '<id>',
  payroll_id: '<id>',
)

res = s.payrolls.get(request: req)

unless res.payroll_show.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                         | Type                                                                                                                                              | Required                                                                                                                                          | Description                                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                         | [Models::Operations::GetV1CompaniesCompanyIdPayrollsPayrollIdRequest](../../models/operations/getv1companiescompanyidpayrollspayrollidrequest.md) | :heavy_check_mark:                                                                                                                                | The request object to use for the request.                                                                                                        |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdPayrollsPayrollIdResponse)](../../models/operations/getv1companiescompanyidpayrollspayrollidresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 404                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## update

This endpoint allows you to update information for one or more employees for a specific **unprocessed** payroll.  You can think of the **unprocessed**
payroll object as a template of fields that you can update.  You cannot modify the structure of the payroll object through this endpoint, only values
of the fields included in the payroll.  If you do not include specific employee compensations, fixed/hourly compensations, or deductions in your request body, they
will not be removed from the payroll. A maximum of 100 employee_compensations can be updated at a time. Only the employee compensation objects that were
inputted will be returned.

scope: `payrolls:write`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-companies-company_id-payrolls" method="put" path="/v1/companies/{company_id}/payrolls/{payroll_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.payrolls.update(company_id: '<id>', payroll_id: '<id>', payroll_update: Models::Shared::PayrollUpdate.new(
  employee_compensations: [
    Models::Shared::PayrollUpdateEmployeeCompensations.new(),
  ],
), x_gusto_api_version: Models::Operations::PutV1CompaniesCompanyIdPayrollsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.payroll_prepared.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `payroll_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the payroll                                                                                                                                                                                                      |
| `payroll_update`                                                                                                                                                                                                             | [Models::Shared::PayrollUpdate](../../models/shared/payrollupdate.md)                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1CompaniesCompanyIdPayrollsHeaderXGustoAPIVersion)](../../models/operations/putv1companiescompanyidpayrollsheaderxgustoapiversion.md)                                                     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1CompaniesCompanyIdPayrollsResponse)](../../models/operations/putv1companiescompanyidpayrollsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 404, 422                                       | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## delete

This endpoint allows you to delete an **unprocessed** payroll.

By default the payroll and associated data is deleted synchronously. To request an asynchronous delete, use the `async=true` query parameter. In both cases validation of ability to delete will be performed and an Unprocessable Entity error will be returned if the payroll is not able to be deleted. A successful synchronous delete will return `204/No Content`. When a payroll has been enqueued for asynchronous deletion, `202/Accepted` will be returned.

scope: `payrolls:run`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-companies-company_id-payrolls" method="delete" path="/v1/companies/{company_id}/payrolls/{payroll_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.payrolls.delete(company_id: '<id>', payroll_id: '<id>', x_gusto_api_version: Models::Operations::DeleteV1CompaniesCompanyIdPayrollsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `payroll_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the payroll                                                                                                                                                                                                      |
| `async`                                                                                                                                                                                                                      | *T.nilable(T::Boolean)*                                                                                                                                                                                                      | :heavy_minus_sign:                                                                                                                                                                                                           | When true, request an asynchronous delete of the payroll.                                                                                                                                                                    |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::DeleteV1CompaniesCompanyIdPayrollsHeaderXGustoAPIVersion)](../../models/operations/deletev1companiescompanyidpayrollsheaderxgustoapiversion.md)                                               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1CompaniesCompanyIdPayrollsResponse)](../../models/operations/deletev1companiescompanyidpayrollsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 404                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## prepare

This endpoint will build the payroll and get it ready for making updates. This includes adding/removing eligible employees from the Payroll and updating the check_date, payroll_deadline, and payroll_status_meta dates & times.
Results are paginated, with a maximum page size of 100 employee_compensations.

Notes:
 * Will null out calculated_at & totals if a payroll has already been calculated.
 * Will return the version param used for updating the payroll

scope: `payrolls:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-companies-company_id-payrolls-payroll_id-prepare" method="put" path="/v1/companies/{company_id}/payrolls/{payroll_id}/prepare" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

req = Models::Operations::PutV1CompaniesCompanyIdPayrollsPayrollIdPrepareRequest.new(
  company_id: '<id>',
  payroll_id: '<id>',
)

res = s.payrolls.prepare(request: req)

unless res.payroll_prepared.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                       | Type                                                                                                                                                            | Required                                                                                                                                                        | Description                                                                                                                                                     |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                                       | [Models::Operations::PutV1CompaniesCompanyIdPayrollsPayrollIdPrepareRequest](../../models/operations/putv1companiescompanyidpayrollspayrollidpreparerequest.md) | :heavy_check_mark:                                                                                                                                              | The request object to use for the request.                                                                                                                      |

### Response

**[T.nilable(Models::Operations::PutV1CompaniesCompanyIdPayrollsPayrollIdPrepareResponse)](../../models/operations/putv1companiescompanyidpayrollspayrollidprepareresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_receipt

Returns a payroll receipt.

Notes:
* Hour and dollar amounts are returned as string representations of numeric decimals.
* Dollar amounts are represented to the cent.
* If no data has yet be inserted for a given field, it defaults to “0.00” (for fixed amounts).

scope: `payrolls:read`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-payment-receipts-payrolls-payroll_uuid" method="get" path="/v1/payrolls/{payroll_uuid}/receipt" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.payrolls.get_receipt(payroll_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1PaymentReceiptsPayrollsPayrollUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.payroll_receipt.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `payroll_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the payroll                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1PaymentReceiptsPayrollsPayrollUuidHeaderXGustoAPIVersion)](../../models/operations/getv1paymentreceiptspayrollspayrolluuidheaderxgustoapiversion.md)                                     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1PaymentReceiptsPayrollsPayrollUuidResponse)](../../models/operations/getv1paymentreceiptspayrollspayrolluuidresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 404                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## get_blockers

Returns a list of reasons that prevent the company from running payrolls. See the [payroll blockers guide](https://docs.gusto.com/embedded-payroll/docs/payroll-blockers) for a complete list of reasons.

The list is empty if there are no payroll blockers.

scope: `payrolls:run`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-payroll-blockers-company_uuid" method="get" path="/v1/companies/{company_uuid}/payrolls/blockers" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.payrolls.get_blockers(company_uuid: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.payroll_blocker_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesPayrollBlockersCompanyUuidResponse)](../../models/operations/getv1companiespayrollblockerscompanyuuidresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## cancel

Transitions a `processed` payroll back to the `unprocessed` state. A payroll can be canceled if it meets both criteria:
- `processed` is `true`
- Current time is earlier than 4pm PT on the `payroll_deadline`

scope: `payrolls:run`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-api-v1-companies-company_id-payrolls-payroll_id-cancel" method="put" path="/v1/companies/{company_id}/payrolls/{payroll_id}/cancel" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.payrolls.cancel(company_id: '<id>', payroll_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.payroll.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `payroll_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the payroll                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutApiV1CompaniesCompanyIdPayrollsPayrollIdCancelResponse)](../../models/operations/putapiv1companiescompanyidpayrollspayrollidcancelresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## get_pay_stub

Get an employee's pay stub for the specified payroll. By default, an application/pdf response will be returned. No other content types are currently supported, but may be supported in the future.

scope: `pay_stubs:read`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-payrolls-payroll_uuid-employees-employee_uuid-pay_stub" method="get" path="/v1/payrolls/{payroll_id}/employees/{employee_id}/pay_stub" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.payrolls.get_pay_stub(payroll_id: '<id>', employee_id: '<id>', x_gusto_api_version: Models::Operations::GetV1PayrollsPayrollUuidEmployeesEmployeeUuidPayStubHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.bytes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `payroll_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the payroll                                                                                                                                                                                                      |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1PayrollsPayrollUuidEmployeesEmployeeUuidPayStubHeaderXGustoAPIVersion)](../../models/operations/getv1payrollspayrolluuidemployeesemployeeuuidpaystubheaderxgustoapiversion.md)           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1PayrollsPayrollUuidEmployeesEmployeeUuidPayStubResponse)](../../models/operations/getv1payrollspayrolluuidemployeesemployeeuuidpaystubresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 404                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## get_pay_stubs

Get an employee's pay stubs

scope: `pay_stubs:read`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employees-employee_uuid-pay_stubs" method="get" path="/v1/employees/{employee_id}/pay_stubs" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.payrolls.get_pay_stubs(employee_id: '<id>', x_gusto_api_version: Models::Operations::GetV1EmployeesEmployeeUuidPayStubsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.employee_pay_stubs_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1EmployeesEmployeeUuidPayStubsHeaderXGustoAPIVersion)](../../models/operations/getv1employeesemployeeuuidpaystubsheaderxgustoapiversion.md)                                               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `page`                                                                                                                                                                                                                       | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | The page that is requested. When unspecified, will load all objects unless endpoint forces pagination.                                                                                                                       |
| `per`                                                                                                                                                                                                                        | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Number of objects per page. For majority of endpoints will default to 25                                                                                                                                                     |

### Response

**[T.nilable(Models::Operations::GetV1EmployeesEmployeeUuidPayStubsResponse)](../../models/operations/getv1employeesemployeeuuidpaystubsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 404                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## generate_printable_checks

This endpoint initiates the generation of employee checks for the payroll specified by payroll_uuid. A generation status and corresponding request_uuid will be returned. Use the generated document GET endpoint with document_type: `printable_payroll_checks` and request_uuid to poll the check generation process and retrieve the generated check URL upon completion.

scope: `generated_documents:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-payrolls-payroll_uuid-generated_documents-printable_payroll_checks" method="post" path="/v1/payrolls/{payroll_uuid}/generated_documents/printable_payroll_checks" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.payrolls.generate_printable_checks(payroll_uuid: '<id>', request_body: Models::Operations::PostV1PayrollsPayrollUuidGeneratedDocumentsPrintablePayrollChecksRequestBody.new(
  printing_format: Models::Operations::PrintingFormat::TOP,
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.payroll_check.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `payroll_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the payroll                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostV1PayrollsPayrollUuidGeneratedDocumentsPrintablePayrollChecksRequestBody](../../models/operations/postv1payrollspayrolluuidgenerateddocumentsprintablepayrollchecksrequestbody.md)                  | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1PayrollsPayrollUuidGeneratedDocumentsPrintablePayrollChecksResponse)](../../models/operations/postv1payrollspayrolluuidgenerateddocumentsprintablepayrollchecksresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## get_v1_companies_company_id_payrolls_id_partner_disbursements

Get partner disbursements for a specific payroll.

scope: `partner_disbursements:read`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-payrolls-id-partner_disbursements" method="get" path="/v1/companies/{company_id}/payrolls/{id}/partner_disbursements" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.payrolls.get_v1_companies_company_id_payrolls_id_partner_disbursements(company_id: '<id>', id: '<id>', x_gusto_api_version: Models::Operations::GetV1CompaniesCompanyIdPayrollsIdPartnerDisbursementsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.payroll_partner_disbursements.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `id`                                                                                                                                                                                                                         | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the payroll                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompaniesCompanyIdPayrollsIdPartnerDisbursementsHeaderXGustoAPIVersion)](../../models/operations/getv1companiescompanyidpayrollsidpartnerdisbursementsheaderxgustoapiversion.md)         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdPayrollsIdPartnerDisbursementsResponse)](../../models/operations/getv1companiescompanyidpayrollsidpartnerdisbursementsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 404                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## patch_v1_companies_company_id_payrolls_id_partner_disbursements

Update partner disbursements for a specific payroll.

scope: `partner_disbursements:write`


### Example Usage

<!-- UsageSnippet language="ruby" operationID="patch-v1-companies-company_id-payrolls-id-partner_disbursements" method="patch" path="/v1/companies/{company_id}/payrolls/{id}/partner_disbursements" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.payrolls.patch_v1_companies_company_id_payrolls_id_partner_disbursements(company_id: '<id>', id: '<id>', x_gusto_api_version: Models::Operations::PatchV1CompaniesCompanyIdPayrollsIdPartnerDisbursementsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15, request_body: Models::Operations::PatchV1CompaniesCompanyIdPayrollsIdPartnerDisbursementsRequestBody.new(
  disbursements: [
    Models::Operations::PatchV1CompaniesCompanyIdPayrollsIdPartnerDisbursementsDisbursements.new(
      employee_uuid: '1a2b3c4d-5e6f-7890-abcd-ef1234567890',
    ),
  ],
))

unless res.payroll_partner_disbursements.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `id`                                                                                                                                                                                                                         | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the payroll                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PatchV1CompaniesCompanyIdPayrollsIdPartnerDisbursementsHeaderXGustoAPIVersion)](../../models/operations/patchv1companiescompanyidpayrollsidpartnerdisbursementsheaderxgustoapiversion.md)     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `request_body`                                                                                                                                                                                                               | [T.nilable(Models::Operations::PatchV1CompaniesCompanyIdPayrollsIdPartnerDisbursementsRequestBody)](../../models/operations/patchv1companiescompanyidpayrollsidpartnerdisbursementsrequestbody.md)                           | :heavy_minus_sign:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |

### Response

**[T.nilable(Models::Operations::PatchV1CompaniesCompanyIdPayrollsIdPartnerDisbursementsResponse)](../../models/operations/patchv1companiescompanyidpayrollsidpartnerdisbursementsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 404, 422                                       | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |