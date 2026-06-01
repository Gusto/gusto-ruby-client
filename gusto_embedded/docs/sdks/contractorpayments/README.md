# ContractorPayments

## Overview

### Available Operations

* [get_receipt](#get_receipt) - Get a single contractor payment receipt
* [fund](#fund) - Fund a contractor payment [DEMO]
* [list](#list) - Get contractor payments for a company
* [create](#create) - Create a contractor payment
* [get](#get) - Get a single contractor payment
* [delete](#delete) - Cancel a contractor payment
* [preview](#preview) - Preview contractor payment debit date
* [get_v1_contractor_payments_contractor_payment_id_pdf](#get_v1_contractor_payments_contractor_payment_id_pdf) - Get a contractor payment PDF

## get_receipt

Returns a contractor payment receipt.

Notes:
* Receipts are only available for direct deposit payments and are only available once those payments have been funded.
* Payroll Receipt requests for payrolls which do not have receipts available (e.g. payment by check) will return a 404 status.
* Hour and dollar amounts are returned as string representations of numeric decimals.
* Dollar amounts are represented to the cent.
* If no data has yet be inserted for a given field, it defaults to “0.00” (for fixed amounts).

scope: `payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-contractor_payments-contractor_payment_uuid-receipt" method="get" path="/v1/contractor_payments/{contractor_payment_uuid}/receipt" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractor_payments.get_receipt(contractor_payment_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1ContractorPaymentsContractorPaymentUuidReceiptHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.contractor_payment_receipt.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_payment_uuid`                                                                                                                                                                                                    | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor payment                                                                                                                                                                                           |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1ContractorPaymentsContractorPaymentUuidReceiptHeaderXGustoAPIVersion)](../../models/operations/getv1contractorpaymentscontractorpaymentuuidreceiptheaderxgustoapiversion.md)             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1ContractorPaymentsContractorPaymentUuidReceiptResponse)](../../models/operations/getv1contractorpaymentscontractorpaymentuuidreceiptresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## fund

> 🚧 Demo action
>
> This action is only available in the Demo environment

Simulate funding a contractor payment. Funding only occurs automatically in the production environment when bank transactions are generated. Use this action in the demo environment to transition a contractor payment's `status` from `Unfunded` to `Funded`. A `Funded` status is required for generating a contractor payment receipt.

scope: `payrolls:run`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-contractor_payments-contractor_payment_uuid-fund" method="put" path="/v1/contractor_payments/{contractor_payment_uuid}/fund" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractor_payments.fund(contractor_payment_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1ContractorPaymentsContractorPaymentUuidFundHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.contractor_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_payment_uuid`                                                                                                                                                                                                    | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor payment                                                                                                                                                                                           |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1ContractorPaymentsContractorPaymentUuidFundHeaderXGustoAPIVersion)](../../models/operations/getv1contractorpaymentscontractorpaymentuuidfundheaderxgustoapiversion.md)                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1ContractorPaymentsContractorPaymentUuidFundResponse)](../../models/operations/getv1contractorpaymentscontractorpaymentuuidfundresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## list

Returns an object containing individual contractor payments, within a given time period, including totals.

Results are returned in reverse chronological order (newest first).

scope: `payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-contractor_payments" method="get" path="/v1/companies/{company_id}/contractor_payments" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)

req = Models::Operations::GetV1CompaniesCompanyIdContractorPaymentsRequest.new(
  company_id: '<id>',
  start_date: '2020-01-01',
  end_date: '2020-12-31'
)
res = s.contractor_payments.list(request: req)

unless res.one_of.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                           | Type                                                                                                                                                | Required                                                                                                                                            | Description                                                                                                                                         |
| --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                           | [Models::Operations::GetV1CompaniesCompanyIdContractorPaymentsRequest](../../models/operations/getv1companiescompanyidcontractorpaymentsrequest.md) | :heavy_check_mark:                                                                                                                                  | The request object to use for the request.                                                                                                          |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdContractorPaymentsResponse)](../../models/operations/getv1companiescompanyidcontractorpaymentsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## create

Pay a contractor. Information needed depends on the contractor's wage type (hourly vs fixed)

scope: `payrolls:run`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-companies-company_id-contractor_payments" method="post" path="/v1/companies/{company_id}/contractor_payments" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractor_payments.create(company_id: '<id>', contractor_payment_body: Models::Shared::ContractorPaymentBody.new(
  contractor_uuid: '<id>',
  date: Date.parse('2020-01-01'),
  wage: '5000',
  hours: '40',
  bonus: '500',
  reimbursement: '20'
), x_gusto_api_version: Models::Operations::PostV1CompaniesCompanyIdContractorPaymentsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.contractor_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `contractor_payment_body`                                                                                                                                                                                                    | [Models::Shared::ContractorPaymentBody](../../models/shared/contractorpaymentbody.md)                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1CompaniesCompanyIdContractorPaymentsHeaderXGustoAPIVersion)](../../models/operations/postv1companiescompanyidcontractorpaymentsheaderxgustoapiversion.md)                               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompaniesCompanyIdContractorPaymentsResponse)](../../models/operations/postv1companiescompanyidcontractorpaymentsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get

Returns a single contractor payment.

scope: `payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-contractor_payment-contractor-payment" method="get" path="/v1/companies/{company_id}/contractor_payments/{contractor_payment_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractor_payments.get(company_id: '<id>', contractor_payment_id: '<id>', x_gusto_api_version: Models::Operations::GetV1CompaniesCompanyIdContractorPaymentContractorPaymentHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.contractor_payment.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `contractor_payment_id`                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor payment                                                                                                                                                                                           |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompaniesCompanyIdContractorPaymentContractorPaymentHeaderXGustoAPIVersion)](../../models/operations/getv1companiescompanyidcontractorpaymentcontractorpaymentheaderxgustoapiversion.md) | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdContractorPaymentContractorPaymentResponse)](../../models/operations/getv1companiescompanyidcontractorpaymentcontractorpaymentresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## delete

Cancels and deletes a contractor payment. If the contractor payment has already started processing ("may_cancel": true), the payment cannot be cancelled.

scope: `payrolls:run`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-companies-company_id-contractor_payment-contractor-payment" method="delete" path="/v1/companies/{company_id}/contractor_payments/{contractor_payment_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractor_payments.delete(company_id: '<id>', contractor_payment_id: '<id>', x_gusto_api_version: Models::Operations::DeleteV1CompaniesCompanyIdContractorPaymentContractorPaymentHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                        | Type                                                                                                                                                                                                                             | Required                                                                                                                                                                                                                         | Description                                                                                                                                                                                                                      |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                     | *::String*                                                                                                                                                                                                                       | :heavy_check_mark:                                                                                                                                                                                                               | The UUID of the company                                                                                                                                                                                                          |
| `contractor_payment_id`                                                                                                                                                                                                          | *::String*                                                                                                                                                                                                                       | :heavy_check_mark:                                                                                                                                                                                                               | The UUID of the contractor payment                                                                                                                                                                                               |
| `x_gusto_api_version`                                                                                                                                                                                                            | [T.nilable(Models::Operations::DeleteV1CompaniesCompanyIdContractorPaymentContractorPaymentHeaderXGustoAPIVersion)](../../models/operations/deletev1companiescompanyidcontractorpaymentcontractorpaymentheaderxgustoa_b3b2cf.md) | :heavy_minus_sign:                                                                                                                                                                                                               | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.     |

### Response

**[T.nilable(Models::Operations::DeleteV1CompaniesCompanyIdContractorPaymentContractorPaymentResponse)](../../models/operations/deletev1companiescompanyidcontractorpaymentcontractorpaymentresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## preview

Returns a debit_date dependent on the ACH payment speed of the company.

If the payment method is Check or Historical payment, the debit_date will be the same as the check_date.

scope: `payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-companies-company_uuid-contractor_payments-preview" method="get" path="/v1/companies/{company_uuid}/contractor_payments/preview" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractor_payments.preview(company_uuid: '<id>', contractor_payments_preview_body: Models::Shared::ContractorPaymentsPreviewBody.new(
  contractor_payments: []
), x_gusto_api_version: Models::Operations::GetCompaniesCompanyUuidContractorPaymentsPreviewHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.contractor_payments_preview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `contractor_payments_preview_body`                                                                                                                                                                                           | [Models::Shared::ContractorPaymentsPreviewBody](../../models/shared/contractorpaymentspreviewbody.md)                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetCompaniesCompanyUuidContractorPaymentsPreviewHeaderXGustoAPIVersion)](../../models/operations/getcompaniescompanyuuidcontractorpaymentspreviewheaderxgustoapiversion.md)                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetCompaniesCompanyUuidContractorPaymentsPreviewResponse)](../../models/operations/getcompaniescompanyuuidcontractorpaymentspreviewresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_v1_contractor_payments_contractor_payment_id_pdf

Get a PDF document for a single contractor payment.

scope: `payrolls:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-contractor_payments-contractor_payment_id-pdf" method="get" path="/v1/contractor_payments/{contractor_payment_id}/pdf" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractor_payments.get_v1_contractor_payments_contractor_payment_id_pdf(contractor_payment_id: '<id>', x_gusto_api_version: Models::Operations::GetV1ContractorPaymentsContractorPaymentIdPdfHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_payment_id`                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor payment                                                                                                                                                                                           |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1ContractorPaymentsContractorPaymentIdPdfHeaderXGustoAPIVersion)](../../models/operations/getv1contractorpaymentscontractorpaymentidpdfheaderxgustoapiversion.md)                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1ContractorPaymentsContractorPaymentIdPdfResponse)](../../models/operations/getv1contractorpaymentscontractorpaymentidpdfresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |