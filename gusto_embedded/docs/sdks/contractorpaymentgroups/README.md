# ContractorPaymentGroups
(*contractor_payment_groups*)

## Overview

### Available Operations

* [get_list](#get_list) - Get contractor payment groups for a company
* [create](#create) - Create a contractor payment group
* [preview](#preview) - Preview a contractor payment group
* [get](#get) - Get a contractor payment group
* [delete](#delete) - Cancel a contractor payment group
* [fund](#fund) - Fund a contractor payment group [DEMO]
* [get_v1_contractor_payment_groups_id_partner_disbursements](#get_v1_contractor_payment_groups_id_partner_disbursements) - Get partner disbursements for a contractor payment group
* [patch_v1_contractor_payment_groups_id_partner_disbursements](#patch_v1_contractor_payment_groups_id_partner_disbursements) - Update partner disbursements for a contractor payment group

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

if ! res.contractor_payment_group_with_blockers.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                              | Type                                                                                                                                                                   | Required                                                                                                                                                               | Description                                                                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                                              | [::GustoEmbedded::Operations::GetV1CompaniesCompanyIdContractorPaymentGroupsRequest](../../models/operations/getv1companiescompanyidcontractorpaymentgroupsrequest.md) | :heavy_check_mark:                                                                                                                                                     | The request object to use for the request.                                                                                                                             |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdContractorPaymentGroupsResponse)](../../models/operations/getv1companiescompanyidcontractorpaymentgroupsresponse.md)**



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
), x_gusto_api_version=::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_06_15)

if ! res.contractor_payment_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsRequestBody](../../models/operations/postv1companiescompanyidcontractorpaymentgroupsrequestbody.md)                                             | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsHeaderXGustoAPIVersion)](../../models/operations/postv1companiescompanyidcontractorpaymentgroupsheaderxgustoapiversion.md)            | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsResponse)](../../models/operations/postv1companiescompanyidcontractorpaymentgroupsresponse.md)**



## preview

Preview a group of contractor payments. Request will validate inputs and return preview of the contractor payment group including the expected debit_date.  Uuid will be null in the response.
The returned creation_token is a required parameter in order to create the contractor payment group.

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
  contractor_payments: [
    ::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsPreviewContractorPayments.new(),
  ],
), x_gusto_api_version=::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsPreviewHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_06_15)

if ! res.contractor_payment_group_preview.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                       | Type                                                                                                                                                                                                                            | Required                                                                                                                                                                                                                        | Description                                                                                                                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                    | *::String*                                                                                                                                                                                                                      | :heavy_check_mark:                                                                                                                                                                                                              | The UUID of the company                                                                                                                                                                                                         |
| `request_body`                                                                                                                                                                                                                  | [::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsPreviewRequestBody](../../models/operations/postv1companiescompanyidcontractorpaymentgroupspreviewrequestbody.md)                                  | :heavy_check_mark:                                                                                                                                                                                                              | N/A                                                                                                                                                                                                                             |
| `x_gusto_api_version`                                                                                                                                                                                                           | [T.nilable(::GustoEmbedded::Operations::PostV1CompaniesCompanyIdContractorPaymentGroupsPreviewHeaderXGustoAPIVersion)](../../models/operations/postv1companiescompanyidcontractorpaymentgroupspreviewheaderxgustoapiversion.md) | :heavy_minus_sign:                                                                                                                                                                                                              | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.    |

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

res = s.contractor_payment_groups.get(contractor_payment_group_uuid="<id>", x_gusto_api_version=::GustoEmbedded::Operations::GetV1ContractorPaymentGroupsContractorPaymentGroupIdHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_06_15)

if ! res.contractor_payment_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_payment_group_uuid`                                                                                                                                                                                              | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor payment group                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::GetV1ContractorPaymentGroupsContractorPaymentGroupIdHeaderXGustoAPIVersion)](../../models/operations/getv1contractorpaymentgroupscontractorpaymentgroupidheaderxgustoapiversion.md)  | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

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

res = s.contractor_payment_groups.delete(contractor_payment_group_uuid="<id>", x_gusto_api_version=::GustoEmbedded::Operations::DeleteV1ContractorPaymentGroupsContractorPaymentGroupIdHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_06_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                         | Type                                                                                                                                                                                                                              | Required                                                                                                                                                                                                                          | Description                                                                                                                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_payment_group_uuid`                                                                                                                                                                                                   | *::String*                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                | The UUID of the contractor payment group                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                             | [T.nilable(::GustoEmbedded::Operations::DeleteV1ContractorPaymentGroupsContractorPaymentGroupIdHeaderXGustoAPIVersion)](../../models/operations/deletev1contractorpaymentgroupscontractorpaymentgroupidheaderxgustoapiversion.md) | :heavy_minus_sign:                                                                                                                                                                                                                | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.      |

### Response

**[T.nilable(::GustoEmbedded::Operations::DeleteV1ContractorPaymentGroupsContractorPaymentGroupIdResponse)](../../models/operations/deletev1contractorpaymentgroupscontractorpaymentgroupidresponse.md)**



## fund

> 🚧 Demo action
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

res = s.contractor_payment_groups.fund(contractor_payment_group_uuid="<id>", x_gusto_api_version=::GustoEmbedded::Operations::PutV1ContractorPaymentGroupsContractorPaymentGroupIdFundHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_06_15)

if ! res.contractor_payment_group.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                           | Type                                                                                                                                                                                                                                | Required                                                                                                                                                                                                                            | Description                                                                                                                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_payment_group_uuid`                                                                                                                                                                                                     | *::String*                                                                                                                                                                                                                          | :heavy_check_mark:                                                                                                                                                                                                                  | The UUID of the contractor payment group                                                                                                                                                                                            |
| `x_gusto_api_version`                                                                                                                                                                                                               | [T.nilable(::GustoEmbedded::Operations::PutV1ContractorPaymentGroupsContractorPaymentGroupIdFundHeaderXGustoAPIVersion)](../../models/operations/putv1contractorpaymentgroupscontractorpaymentgroupidfundheaderxgustoapiversion.md) | :heavy_minus_sign:                                                                                                                                                                                                                  | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.        |

### Response

**[T.nilable(::GustoEmbedded::Operations::PutV1ContractorPaymentGroupsContractorPaymentGroupIdFundResponse)](../../models/operations/putv1contractorpaymentgroupscontractorpaymentgroupidfundresponse.md)**



## get_v1_contractor_payment_groups_id_partner_disbursements

Get partner disbursements for a specific contractor payment group.

scope: `partner_disbursements:read`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.contractor_payment_groups.get_v1_contractor_payment_groups_id_partner_disbursements(id="<id>", x_gusto_api_version=::GustoEmbedded::Operations::GetV1ContractorPaymentGroupsIdPartnerDisbursementsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_06_15)

if ! res.contractor_payment_group_partner_disbursements.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `id`                                                                                                                                                                                                                         | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor payment group                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::GetV1ContractorPaymentGroupsIdPartnerDisbursementsHeaderXGustoAPIVersion)](../../models/operations/getv1contractorpaymentgroupsidpartnerdisbursementsheaderxgustoapiversion.md)      | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1ContractorPaymentGroupsIdPartnerDisbursementsResponse)](../../models/operations/getv1contractorpaymentgroupsidpartnerdisbursementsresponse.md)**



## patch_v1_contractor_payment_groups_id_partner_disbursements

Update partner disbursements for a specific contractor payment group.

scope: `partner_disbursements:write`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.contractor_payment_groups.patch_v1_contractor_payment_groups_id_partner_disbursements(id="<id>", x_gusto_api_version=::GustoEmbedded::Operations::PatchV1ContractorPaymentGroupsIdPartnerDisbursementsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_06_15, request_body=::GustoEmbedded::Operations::PatchV1ContractorPaymentGroupsIdPartnerDisbursementsRequestBody.new(
  disbursements: [
    ::GustoEmbedded::Operations::Disbursements.new(
      contractor_payment_uuid: "9f8e7d6c-5b4a-3928-1c2d-3e4f5a6b7c8d",
    ),
  ],
))

if ! res.contractor_payment_group_partner_disbursements.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `id`                                                                                                                                                                                                                         | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor payment group                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::PatchV1ContractorPaymentGroupsIdPartnerDisbursementsHeaderXGustoAPIVersion)](../../models/operations/patchv1contractorpaymentgroupsidpartnerdisbursementsheaderxgustoapiversion.md)  | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `request_body`                                                                                                                                                                                                               | [T.nilable(::GustoEmbedded::Operations::PatchV1ContractorPaymentGroupsIdPartnerDisbursementsRequestBody)](../../models/operations/patchv1contractorpaymentgroupsidpartnerdisbursementsrequestbody.md)                        | :heavy_minus_sign:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |

### Response

**[T.nilable(::GustoEmbedded::Operations::PatchV1ContractorPaymentGroupsIdPartnerDisbursementsResponse)](../../models/operations/patchv1contractorpaymentgroupsidpartnerdisbursementsresponse.md)**

