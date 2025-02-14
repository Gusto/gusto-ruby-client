# ContractorPaymentMethods
(*contractor_payment_methods*)

## Overview

### Available Operations

* [create_bank_account](#create_bank_account) - Create a contractor bank account

## create_bank_account

Creates a contractor bank account.

Note: We currently only support one bank account per contractor. Using this endpoint on a contractor who already has a bank account will just replace it.

scope: `contractor_payment_methods:write`

### Example Usage

```ruby
require 'gusto'


s = ::OpenApiSDK::Gusto.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.contractor_payment_methods.create_bank_account(contractor_uuid="<id>", request_body=::OpenApiSDK::Operations::PostV1ContractorsContractorUuidBankAccountsRequestBody.new(
  name: "<value>",
  routing_number: "<value>",
  account_number: "<value>",
  account_type: ::OpenApiSDK::Operations::PostV1ContractorsContractorUuidBankAccountsAccountType::CHECKING,
), x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.contractor_bank_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `request_body`                                                                                                                                                                                                               | [::OpenApiSDK::Operations::PostV1ContractorsContractorUuidBankAccountsRequestBody](../../models/operations/postv1contractorscontractoruuidbankaccountsrequestbody.md)                                                        | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::OpenApiSDK::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::OpenApiSDK::Operations::PostV1ContractorsContractorUuidBankAccountsResponse)](../../models/operations/postv1contractorscontractoruuidbankaccountsresponse.md)**

