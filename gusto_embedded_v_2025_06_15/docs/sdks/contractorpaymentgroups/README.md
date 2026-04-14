# ContractorPaymentGroups
(*contractor_payment_groups*)

## Overview

### Available Operations

* [create](#create) - Create a contractor payment group
* [get_list](#get_list) - Get contractor payment groups for a company
* [preview](#preview) - Preview a contractor payment group
* [get](#get) - Fetch a contractor payment group
* [delete](#delete) - Cancel a contractor payment group
* [fund](#fund) - Fund a contractor payment group [DEMO]

## create

Pay a group of contractors. Information needed depends on the contractor's wage type (hourly vs fixed)

scope: `payrolls:run`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.contractor_payment_groups.create(company_id="<id>", request_body=::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsRequestBody.new(
  check_date: Date.parse("2020-01-01"),
  creation_token: "1d532d13-8f61-4a57-ad3c-b5fac1c6e05e",
  contractor_payments: [
    ::GustoEmbedded::Operations::ContractorPayments.new(
      wage: 5000.0,
      hours: 40.0,
      bonus: 500.0,
      reimbursement: 20.0,
    ),
  ],
), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.contractor_payment_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsRequestBody](../../models/operations/postv1companiescompanyidcontractorpaymentgroupsrequestbody.md)                                             | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsResponse)](../../models/operations/postv1companiescompanyidcontractorpaymentgroupsresponse.md)**



## get_list

Returns a list of minimal contractor payment groups within a given time period, including totals but not associated contractor payments.

scope: `payrolls:read`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

req = ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdContractorPaymentGroupsRequest.new(
  company_id: "<id>",
  start_date: "2020-01-01",
  end_date: "2020-12-31",
)

res = s.contractor_payment_groups.get_list(req)

if ! res.contractor_payment_group_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                              | Type                                                                                                                                                                   | Required                                                                                                                                                               | Description                                                                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                                              | [::GustoEmbedded::Operations::GetV1CompaniesCompanyIdContractorPaymentGroupsRequest](../../models/operations/getv1companiescompanyidcontractorpaymentgroupsrequest.md) | :heavy_check_mark:                                                                                                                                                     | The request object to use for the request.                                                                                                                             |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdContractorPaymentGroupsResponse)](../../models/operations/getv1companiescompanyidcontractorpaymentgroupsresponse.md)**



## preview

Preview a group of contractor payments. Request will validate inputs and return preview of the contractor payment group including the expected debit_date.  Uuid will be null in the response.

scope: `payrolls:read`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.contractor_payment_groups.preview(company_id="<id>", request_body=::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsPreviewRequestBody.new(
  check_date: Date.parse("2020-01-01"),
  creation_token: "1d532d13-8f61-4a57-ad3c-b5fac1c6e05e",
  contractor_payments: [
    ::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsPreviewContractorPayments.new(
      wage: 5000.0,
      hours: 40.0,
      bonus: 500.0,
      reimbursement: 20.0,
    ),
  ],
), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.contractor_payment_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsPreviewRequestBody](../../models/operations/postv1companiescompanyidcontractorpaymentgroupspreviewrequestbody.md)                               | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsPreviewResponse)](../../models/operations/postv1companiescompanyidcontractorpaymentgroupspreviewresponse.md)**



## get

Returns a contractor payment group with all associated contractor payments.

scope: `payrolls:read`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.contractor_payment_groups.get(contractor_payment_group_uuid="<id>", x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.contractor_payment_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_payment_group_uuid`                                                                                                                                                                                              | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor payment group                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1ContractorPaymentGroupsContractorPaymentGroupIdResponse)](../../models/operations/getv1contractorpaymentgroupscontractorpaymentgroupidresponse.md)**



## delete

Cancels a contractor payment group and all associated contractor payments. All contractor payments must be cancellable, unfunded.

scope: `payrolls:run`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.contractor_payment_groups.delete(contractor_payment_group_uuid="<id>", x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_payment_group_uuid`                                                                                                                                                                                              | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor payment group                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::DeleteV1ContractorPaymentGroupsContractorPaymentGroupIdResponse)](../../models/operations/deletev1contractorpaymentgroupscontractorpaymentgroupidresponse.md)**



## fund

> 🚧 Demo action
>
> This action is only available in the Demo environment

Simulate funding a contractor payment group. Funding only occurs automatically in the production environment when bank transactions are generated. Use this action in the demo environment to transition a contractor payment group's `status` from `Unfunded` to `Funded`. A `Funded` status is required for generating a contractor payment receipt.

scope: `payrolls:run`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.contractor_payment_groups.fund(contractor_payment_group_uuid="<id>", x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.contractor_payment_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_payment_group_uuid`                                                                                                                                                                                              | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor payment group                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PutV1ContractorPaymentGroupsContractorPaymentGroupIdFundResponse)](../../models/operations/putv1contractorpaymentgroupscontractorpaymentgroupidfundresponse.md)**

