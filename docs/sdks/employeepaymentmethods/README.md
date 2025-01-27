# EmployeePaymentMethods
(*employee_payment_methods*)

## Overview

### Available Operations

* [get](#get) - Get an employee's payment method

## get

Fetches an employee's payment method. An employee payment method
describes how the payment should be split across the employee's associated
bank accounts.

scope: `employee_payment_methods:read`

### Example Usage

```ruby
require 'gusto'


s = ::OpenApiSDK::Gusto.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employee_payment_methods.get(employee_id="<id>", x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee_payment_method.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::OpenApiSDK::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdPaymentMethodResponse)](../../models/operations/getv1employeesemployeeidpaymentmethodresponse.md)**

