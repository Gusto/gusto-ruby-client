# ContractorPaymentMethods

## Overview

### Available Operations

* [create_bank_account](#create_bank_account) - Create a contractor bank account

## create_bank_account

Creates a contractor bank account.

Note: We currently only support one bank account per contractor. Using this endpoint on a contractor who already has a bank account will just replace it.

scope: `contractor_payment_methods:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-contractors-contractor_uuid-bank_accounts" method="post" path="/v1/contractors/{contractor_uuid}/bank_accounts" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractor_payment_methods.create_bank_account(contractor_uuid: '<id>', contractor_bank_account_create_request_body: Models::Shared::ContractorBankAccountCreateRequestBody.new(
  name: '<value>',
  routing_number: '<value>',
  account_number: '<value>',
  account_type: Models::Shared::ContractorBankAccountCreateRequestBodyAccountType::SAVINGS
), x_gusto_api_version: Models::Operations::PostV1ContractorsContractorUuidBankAccountsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.contractor_bank_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `contractor_bank_account_create_request_body`                                                                                                                                                                                | [Models::Shared::ContractorBankAccountCreateRequestBody](../../models/shared/contractorbankaccountcreaterequestbody.md)                                                                                                      | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1ContractorsContractorUuidBankAccountsHeaderXGustoAPIVersion)](../../models/operations/postv1contractorscontractoruuidbankaccountsheaderxgustoapiversion.md)                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1ContractorsContractorUuidBankAccountsResponse)](../../models/operations/postv1contractorscontractoruuidbankaccountsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |