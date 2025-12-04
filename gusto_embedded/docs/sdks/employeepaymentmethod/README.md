# EmployeePaymentMethod
(*employee_payment_method*)

## Overview

### Available Operations

* [create](#create) - Create an employee bank account
* [delete_bank_account](#delete_bank_account) - Delete an employee bank account
* [update_bank_account](#update_bank_account) - Update an employee bank account
* [get](#get) - Get an employee's payment method
* [update](#update) - Update an employee's payment method

## create

Creates an employee bank account. An employee can have multiple
bank accounts. Note that creating an employee bank account will also update
the employee's payment method.

scope: `employee_payment_methods:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-employees-employee_id-bank_accounts" method="post" path="/v1/employees/{employee_id}/bank_accounts" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.employee_payment_method.create(employee_id: '<id>', request_body: Models::Operations::PostV1EmployeesEmployeeIdBankAccountsRequestBody.new(
  name: 'BoA Checking Account',
  routing_number: '266905059',
  account_number: '5809431207',
  account_type: Models::Operations::AccountType::CHECKING,
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.employee_bank_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostV1EmployeesEmployeeIdBankAccountsRequestBody](../../models/operations/postv1employeesemployeeidbankaccountsrequestbody.md)                                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1EmployeesEmployeeIdBankAccountsResponse)](../../models/operations/postv1employeesemployeeidbankaccountsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## delete_bank_account

Deletes an employee bank account. To update an employee's bank
account details, delete the bank account first and create a new one.

scope: `employee_payment_methods:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-employees-employee_id-bank_accounts-bank_account_id" method="delete" path="/v1/employees/{employee_id}/bank_accounts/{bank_account_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.employee_payment_method.delete_bank_account(employee_id: '<id>', bank_account_uuid: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `bank_account_uuid`                                                                                                                                                                                                          | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the bank account                                                                                                                                                                                                 |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1EmployeesEmployeeIdBankAccountsBankAccountIdResponse)](../../models/operations/deletev1employeesemployeeidbankaccountsbankaccountidresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_bank_account

Updates an employee bank account.

scope: `employee_payment_methods:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-employees-employee_id-bank_accounts" method="put" path="/v1/employees/{employee_id}/bank_accounts/{bank_account_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.employee_payment_method.update_bank_account(employee_id: '<id>', bank_account_uuid: '<id>', request_body: Models::Operations::PutV1EmployeesEmployeeIdBankAccountsRequestBody.new(
  name: 'BoA Checking Account',
  routing_number: '266905059',
  account_number: '5809431207',
  account_type: Models::Operations::PutV1EmployeesEmployeeIdBankAccountsAccountType::CHECKING,
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.employee_bank_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `bank_account_uuid`                                                                                                                                                                                                          | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the bank account                                                                                                                                                                                                 |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1EmployeesEmployeeIdBankAccountsRequestBody](../../models/operations/putv1employeesemployeeidbankaccountsrequestbody.md)                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1EmployeesEmployeeIdBankAccountsResponse)](../../models/operations/putv1employeesemployeeidbankaccountsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## get

Fetches an employee's payment method. An employee payment method
describes how the payment should be split across the employee's associated
bank accounts.

scope: `employee_payment_methods:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employees-employee_id-payment_method" method="get" path="/v1/employees/{employee_id}/payment_method" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.employee_payment_method.get(employee_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.employee_payment_method.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1EmployeesEmployeeIdPaymentMethodResponse)](../../models/operations/getv1employeesemployeeidpaymentmethodresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update

Updates an employee's payment method. Note that creating an employee
bank account will also update the employee's payment method.

scope: `employee_payment_methods:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-employees-employee_id-payment_method" method="put" path="/v1/employees/{employee_id}/payment_method" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.employee_payment_method.update(employee_id: '<id>', request_body: Models::Operations::PutV1EmployeesEmployeeIdPaymentMethodRequestBody.new(
  version: '63859768485e218ccf8a449bb60f14ed',
  type: Models::Operations::Type::DIRECT_DEPOSIT,
  split_by: Models::Operations::SplitBy::AMOUNT,
  splits: [
    Models::Operations::Splits.new(
      uuid: 'e88f9436-b74e-49a8-87e9-777b9bfe715e',
      name: 'BoA Checking Account',
      priority: 1,
      split_amount: 500,
    ),
    Models::Operations::Splits.new(
      uuid: '0d2b7f73-05d6-4184-911d-269edeecc30a',
      name: 'Chase Checking Account',
      priority: 2,
      split_amount: 1000,
    ),
    Models::Operations::Splits.new(
      uuid: '1531e824-8d9e-4bd8-9f90-0d04608125d7',
      name: 'US Bank Checking Account',
      priority: 3,
      split_amount: nil,
    ),
  ],
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.employee_payment_method.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1EmployeesEmployeeIdPaymentMethodRequestBody](../../models/operations/putv1employeesemployeeidpaymentmethodrequestbody.md)                                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1EmployeesEmployeeIdPaymentMethodResponse)](../../models/operations/putv1employeesemployeeidpaymentmethodresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |