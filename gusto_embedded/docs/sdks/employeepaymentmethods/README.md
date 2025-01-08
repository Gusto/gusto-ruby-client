# EmployeePaymentMethods
(*employee_payment_methods*)

## Overview

### Available Operations

* [get_all](#get_all) - Get all employee bank accounts
* [delete](#delete) - Delete an employee bank account
* [update](#update) - Update an employee's payment method

## get_all

Returns all employee bank accounts.

scope: `employee_payment_methods:read`

### Example Usage

```ruby
require 'gusto_embedded'


s = ::OpenApiSDK::GustoEmbedded.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdBankAccountsRequest.new(
  employee_id: "<id>",
)
    
res = s.employee_payment_methods.get_all(req)

if ! res.employee_bank_account_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                       | Type                                                                                                                                            | Required                                                                                                                                        | Description                                                                                                                                     |
| ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                       | [::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdBankAccountsRequest](../../models/operations/getv1employeesemployeeidbankaccountsrequest.md) | :heavy_check_mark:                                                                                                                              | The request object to use for the request.                                                                                                      |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdBankAccountsResponse)](../../models/operations/getv1employeesemployeeidbankaccountsresponse.md)**



## delete

Deletes an employee bank account. To update an employee's bank
account details, delete the bank account first and create a new one.

scope: `employee_payment_methods:write`

### Example Usage

```ruby
require 'gusto_embedded'


s = ::OpenApiSDK::GustoEmbedded.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employee_payment_methods.delete(employee_id="<id>", bank_account_uuid="<id>", x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `bank_account_uuid`                                                                                                                                                                                                          | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the bank account                                                                                                                                                                                                 |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::OpenApiSDK::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::OpenApiSDK::Operations::DeleteV1EmployeesEmployeeIdBankAccountsBankAccountIdResponse)](../../models/operations/deletev1employeesemployeeidbankaccountsbankaccountidresponse.md)**



## update

Updates an employee's payment method. Note that creating an employee
bank account will also update the employee's payment method.

scope: `employee_payment_methods:write`

### Example Usage

```ruby
require 'gusto_embedded'


s = ::OpenApiSDK::GustoEmbedded.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employee_payment_methods.update(employee_id="<id>", x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01, request_body=::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdPaymentMethodRequestBody.new(
  version: "<value>",
  type: ::OpenApiSDK::Operations::Type::CHECK,
))

if ! res.employee_payment_method.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::OpenApiSDK::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `request_body`                                                                                                                                                                                                               | [T.nilable(::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdPaymentMethodRequestBody)](../../models/operations/putv1employeesemployeeidpaymentmethodrequestbody.md)                                                         | :heavy_minus_sign:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |

### Response

**[T.nilable(::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdPaymentMethodResponse)](../../models/operations/putv1employeesemployeeidpaymentmethodresponse.md)**

