# TaxPayments

## Overview

### Available Operations

* [get_tax_payments](#get_tax_payments) - Get all tax payments for a company
* [get_tax_payment](#get_tax_payment) - Get a tax payment for a company

## get_tax_payments

Fetches all tax payments Gusto has made (or scheduled) to tax agencies on behalf of a company.

scope: `tax_payments:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-tax-payments" method="get" path="/v1/companies/{company_uuid}/tax_payments" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)

req = Models::Operations::GetTaxPaymentsRequest.new(
  company_uuid: '<id>',
  sort_by: 'amount:asc'
)
res = s.tax_payments.get_tax_payments(request: req)

unless res.tax_payment_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Operations::GetTaxPaymentsRequest](../../models/operations/gettaxpaymentsrequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::GetTaxPaymentsResponse)](../../models/operations/gettaxpaymentsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_tax_payment

Fetches a single tax payment by UUID, including the payroll tax liabilities that make up the payment.

scope: `tax_payments:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-tax-payment" method="get" path="/v1/companies/{company_uuid}/tax_payments/{uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.tax_payments.get_tax_payment(company_uuid: '<id>', uuid: '7cdc7492-54c4-4684-9729-2c5da517245b', x_gusto_api_version: Models::Operations::GetTaxPaymentHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.tax_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `uuid`                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the tax payment                                                                                                                                                                                                  |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetTaxPaymentHeaderXGustoAPIVersion)](../../models/operations/gettaxpaymentheaderxgustoapiversion.md)                                                                                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetTaxPaymentResponse)](../../models/operations/gettaxpaymentresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |