# BankAccounts

## Overview

### Available Operations

* [get](#get) - Get all company bank accounts
* [create](#create) - Create a company bank account
* [verify](#verify) - Verify a company bank account
* [create_from_plaid_token](#create_from_plaid_token) - Create a bank account from a plaid processor token
* [delete_v1_companies_company_id_bank_accounts_bank_account_id](#delete_v1_companies_company_id_bank_accounts_bank_account_id) - Delete a company bank account

## get

Returns company bank accounts. Currently, we only support a single default bank account per company.

scope: `company_bank_accounts:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-bank-accounts" method="get" path="/v1/companies/{company_id}/bank_accounts" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.bank_accounts.get(company_id: '<id>', x_gusto_api_version: Models::Operations::GetV1CompaniesCompanyIdBankAccountsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.company_bank_accounts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompaniesCompanyIdBankAccountsHeaderXGustoAPIVersion)](../../models/operations/getv1companiescompanyidbankaccountsheaderxgustoapiversion.md)                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdBankAccountsResponse)](../../models/operations/getv1companiescompanyidbankaccountsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## create

This endpoint creates a new company bank account.

Upon being created, two verification deposits are automatically sent to the bank account, and the bank account's verification_status is 'awaiting_deposits'.

When the deposits are successfully transferred, the verification_status changes to 'ready_for_verification', at which point the verify endpoint can be used to verify the bank account.
After successful verification, the bank account's verification_status is 'verified'.


>🚧 Warning
>
> If a default bank account exists, it will be disabled and the new bank account will replace it as the company's default funding method.

scope: `company_bank_accounts:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-companies-company_id-bank-accounts" method="post" path="/v1/companies/{company_id}/bank_accounts" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.bank_accounts.create(company_id: '<id>', company_bank_account_request: Models::Shared::CompanyBankAccountRequest.new(
  routing_number: '<value>',
  account_number: '<value>',
  account_type: Models::Shared::CompanyBankAccountRequestAccountType::SAVINGS
), x_gusto_api_version: Models::Operations::PostV1CompaniesCompanyIdBankAccountsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.company_bank_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `company_bank_account_request`                                                                                                                                                                                               | [Models::Shared::CompanyBankAccountRequest](../../models/shared/companybankaccountrequest.md)                                                                                                                                | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1CompaniesCompanyIdBankAccountsHeaderXGustoAPIVersion)](../../models/operations/postv1companiescompanyidbankaccountsheaderxgustoapiversion.md)                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompaniesCompanyIdBankAccountsResponse)](../../models/operations/postv1companiescompanyidbankaccountsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## verify

Verify a company bank account by confirming the two micro-deposits sent to the bank account.

Note that the order of the two deposits specified in request parameters does not matter.
There's a maximum of 5 verification attempts, after which we will automatically initiate a new set of micro-deposits and require the bank account to be verified with the new micro-deposits.

### Bank account verification in demo
In the demo environment, use the `POST /v1/companies/{company_id}/bank_accounts/{bank_account_uuid}/send_test_deposits` endpoint to simulate the micro-deposits transfer and return the two amounts in the response. You can call this endpoint as many times as you wish to retrieve the values of the two micro-deposits.

### Webhooks
- `company.bank_account.verified`: Fires when the company bank account is successfully verified.

### Related guides
- [Manage company bank accounts](doc:manage-company-bank-accounts)
- [Bank Account Events](doc:bank-account-events)

scope: `company_bank_accounts:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-companies-company_id-bank-accounts-verify" method="put" path="/v1/companies/{company_id}/bank_accounts/{bank_account_uuid}/verify" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.bank_accounts.verify(company_id: '<id>', bank_account_uuid: '<id>', company_bank_account_verify_request: Models::Shared::CompanyBankAccountVerifyRequest.new(
  deposit_1: 8299.3,
  deposit_2: 7367.9
), x_gusto_api_version: Models::Operations::PutV1CompaniesCompanyIdBankAccountsVerifyHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.company_bank_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `bank_account_uuid`                                                                                                                                                                                                          | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company bank account                                                                                                                                                                                         |
| `company_bank_account_verify_request`                                                                                                                                                                                        | [Models::Shared::CompanyBankAccountVerifyRequest](../../models/shared/companybankaccountverifyrequest.md)                                                                                                                    | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1CompaniesCompanyIdBankAccountsVerifyHeaderXGustoAPIVersion)](../../models/operations/putv1companiescompanyidbankaccountsverifyheaderxgustoapiversion.md)                                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1CompaniesCompanyIdBankAccountsVerifyResponse)](../../models/operations/putv1companiescompanyidbankaccountsverifyresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## create_from_plaid_token

This endpoint creates a new **verified** bank account by using a plaid processor token to retrieve its information.

> 📘
> To create a token please use the [plaid api](https://plaid.com/docs/api/processors/#processortokencreate) and select "gusto" as processor.

> 🚧 Warning - Company Bank Accounts
>
> If a default company bank account exists, it will be disabled and the new bank account will replace it as the company's default funding method.

scope: `plaid_processor:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-plaid-processor_token" method="post" path="/v1/plaid/processor_token" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.bank_accounts.create_from_plaid_token(plaid_processor_token_request: Models::Shared::PlaidProcessorTokenRequest.new(
  owner_type: Models::Shared::OwnerType::COMPANY,
  owner_id: '<id>',
  processor_token: '<value>'
), x_gusto_api_version: Models::Operations::PostV1PlaidProcessorTokenHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.company_bank_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `plaid_processor_token_request`                                                                                                                                                                                              | [Models::Shared::PlaidProcessorTokenRequest](../../models/shared/plaidprocessortokenrequest.md)                                                                                                                              | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1PlaidProcessorTokenHeaderXGustoAPIVersion)](../../models/operations/postv1plaidprocessortokenheaderxgustoapiversion.md)                                                                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1PlaidProcessorTokenResponse)](../../models/operations/postv1plaidprocessortokenresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## delete_v1_companies_company_id_bank_accounts_bank_account_id

This endpoint disables a company bank account.

A bank account cannot be disabled if it is used for any unprocessed payments.

scope: `company_bank_accounts:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-companies-company_id-bank-accounts-bank_account_id" method="delete" path="/v1/companies/{company_id}/bank_accounts/{bank_account_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.bank_accounts.delete_v1_companies_company_id_bank_accounts_bank_account_id(company_id: '<id>', bank_account_id: '<id>', x_gusto_api_version: Models::Operations::DeleteV1CompaniesCompanyIdBankAccountsBankAccountIdHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `bank_account_id`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company bank account                                                                                                                                                                                         |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::DeleteV1CompaniesCompanyIdBankAccountsBankAccountIdHeaderXGustoAPIVersion)](../../models/operations/deletev1companiescompanyidbankaccountsbankaccountidheaderxgustoapiversion.md)             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1CompaniesCompanyIdBankAccountsBankAccountIdResponse)](../../models/operations/deletev1companiescompanyidbankaccountsbankaccountidresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |