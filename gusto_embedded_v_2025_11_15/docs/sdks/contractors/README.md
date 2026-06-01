# Contractors

## Overview

### Available Operations

* [list](#list) - Get contractors of a company
* [create](#create) - Create a contractor
* [get](#get) - Get a contractor
* [update](#update) - Update a contractor
* [delete](#delete) - Delete a contractor
* [get_onboarding_status](#get_onboarding_status) - Get the contractor's onboarding status
* [update_onboarding_status](#update_onboarding_status) - Change the contractor's onboarding status
* [get_address](#get_address) - Get a contractor address
* [update_address](#update_address) - Create or update a contractor's address
* [get_v1_companies_company_id_contractors_payment_details](#get_v1_companies_company_id_contractors_payment_details) - List contractor payment details
* [post_v1_contractors_contractor_uuid_rehire](#post_v1_contractors_contractor_uuid_rehire) - Schedule a contractor rehire
* [delete_v1_contractors_contractor_uuid_rehire](#delete_v1_contractors_contractor_uuid_rehire) - Cancel a pending contractor rehire
* [post_v1_contractors_contractor_uuid_termination](#post_v1_contractors_contractor_uuid_termination) - Schedule a contractor termination
* [delete_v1_contractors_contractor_uuid_termination](#delete_v1_contractors_contractor_uuid_termination) - Cancel a pending contractor termination

## list

Get all contractors, active and inactive, individual and business, for a company.

scope: `contractors:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_uuid-contractors" method="get" path="/v1/companies/{company_uuid}/contractors" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)

req = Models::Operations::GetV1CompaniesCompanyUuidContractorsRequest.new(
  company_uuid: '<id>',
  sort_by: 'created_at:asc'
)
res = s.contractors.list(request: req)

unless res.contractors.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                 | Type                                                                                                                                      | Required                                                                                                                                  | Description                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                 | [Models::Operations::GetV1CompaniesCompanyUuidContractorsRequest](../../models/operations/getv1companiescompanyuuidcontractorsrequest.md) | :heavy_check_mark:                                                                                                                        | The request object to use for the request.                                                                                                |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyUuidContractorsResponse)](../../models/operations/getv1companiescompanyuuidcontractorsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## create

Create an individual or business contractor.

scope: `contractors:manage`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-companies-company_uuid-contractors" method="post" path="/v1/companies/{company_uuid}/contractors" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractors.create(company_uuid: '<id>', body: Models::Shared::ContractorCreateRequestBody.new(
  wage_type: Models::Shared::ContractorCreateRequestBodyWageType::HOURLY,
  start_date: '2020-01-11',
  hourly_rate: '40.0'
), x_gusto_api_version: Models::Operations::PostV1CompaniesCompanyUuidContractorsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.contractor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `body`                                                                                                                                                                                                                       | [Models::Shared::ContractorCreateRequestBody](../../models/shared/contractorcreaterequestbody.md)                                                                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1CompaniesCompanyUuidContractorsHeaderXGustoAPIVersion)](../../models/operations/postv1companiescompanyuuidcontractorsheaderxgustoapiversion.md)                                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompaniesCompanyUuidContractorsResponse)](../../models/operations/postv1companiescompanyuuidcontractorsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get

Get a contractor.

scope: `contractors:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-contractors-contractor_uuid" method="get" path="/v1/contractors/{contractor_uuid}" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractors.get(contractor_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1ContractorsContractorUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.contractor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1ContractorsContractorUuidHeaderXGustoAPIVersion)](../../models/operations/getv1contractorscontractoruuidheaderxgustoapiversion.md)                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `include`                                                                                                                                                                                                                    | T::Array<[Models::Operations::GetV1ContractorsContractorUuidQueryParamInclude](../../models/operations/getv1contractorscontractoruuidqueryparaminclude.md)>                                                                  | :heavy_minus_sign:                                                                                                                                                                                                           | Include the requested attribute(s) in each contractor response. Multiple options are comma separated.                                                                                                                        |

### Response

**[T.nilable(Models::Operations::GetV1ContractorsContractorUuidResponse)](../../models/operations/getv1contractorscontractoruuidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## update

Update a contractor.

> 🚧 Warning
>
> Watch out when changing a contractor's type (when the contractor is finished onboarding). Specifically, changing contractor type can be dangerous since Gusto won't recognize and file two separate 1099s if they simply change from business to individual

scope: `contractors:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-contractors-contractor_uuid" method="put" path="/v1/contractors/{contractor_uuid}" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractors.update(contractor_uuid: '<id>', body: Models::Shared::ContractorUpdateRequestBody.new(
  version: '56d00c178bc7393b2a206ed6a86afcb4',
  start_date: '2020-01-11',
  hourly_rate: '40.0'
), x_gusto_api_version: Models::Operations::PutV1ContractorsContractorUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.contractor.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `body`                                                                                                                                                                                                                       | [Models::Shared::ContractorUpdateRequestBody](../../models/shared/contractorupdaterequestbody.md)                                                                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1ContractorsContractorUuidHeaderXGustoAPIVersion)](../../models/operations/putv1contractorscontractoruuidheaderxgustoapiversion.md)                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1ContractorsContractorUuidResponse)](../../models/operations/putv1contractorscontractoruuidresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 409, 422                                 | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## delete

A contractor can only be deleted when there are no contractor payments.

scope: `contractors:manage`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-contractors-contractor_uuid" method="delete" path="/v1/contractors/{contractor_uuid}" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractors.delete(contractor_uuid: '<id>', x_gusto_api_version: Models::Operations::DeleteV1ContractorsContractorUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::DeleteV1ContractorsContractorUuidHeaderXGustoAPIVersion)](../../models/operations/deletev1contractorscontractoruuidheaderxgustoapiversion.md)                                                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1ContractorsContractorUuidResponse)](../../models/operations/deletev1contractorscontractoruuidresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_onboarding_status

Retrieves a contractor's onboarding status. The data returned helps inform the required onboarding steps and respective completion status.

## onboarding_status

### Admin-facilitated onboarding
| onboarding_status | Description |
|:------------------|------------:|
| `admin_onboarding_incomplete` | Admin needs to enter basic information about the contractor. |
| `admin_onboarding_review` | All information has been completed and admin needs to confirm onboarding. |
| `onboarding_completed` | Contractor has been fully onboarded and verified. |

### Contractor self-onboarding

| onboarding_status | Description |
| --- | ----------- |
| `admin_onboarding_incomplete` | Admin needs to enter basic information about the contractor. |
| `self_onboarding_not_invited` | Admin has the intention to invite the contractor to self-onboard (e.g., marking a checkbox), but the system has not yet sent the invitation. |
| `self_onboarding_invited` | Contractor has been sent an invitation to self-onboard. |
| `self_onboarding_started` | Contractor has started the self-onboarding process. |
| `self_onboarding_review` | Admin needs to review contractors's entered information and confirm onboarding. |
| `onboarding_completed` | Contractor has been fully onboarded and verified. |

## onboarding_steps

| onboarding_steps | Requirement(s) to be completed |
|:-----------------|-------------------------------:|
| `basic_details` | Add individual contractor's first name, last name, social security number or Business name and EIN depending on the contractor type |
| `add_address` | Add contractor address. |
| `compensation_details` | Add contractor compensation. |
| `payment_details` | (optional) Set up contractor's direct deposit or set to check. |
| `sign_documents` | Contractor forms (e.g., W9) are generated & signed. |
| `file_new_hire_report` | Contractor new hire report is generated. |

scope: `contractors:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-contractors-contractor_uuid-onboarding_status" method="get" path="/v1/contractors/{contractor_uuid}/onboarding_status" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractors.get_onboarding_status(contractor_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1ContractorsContractorUuidOnboardingStatusHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.contractor_onboarding_status.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1ContractorsContractorUuidOnboardingStatusHeaderXGustoAPIVersion)](../../models/operations/getv1contractorscontractoruuidonboardingstatusheaderxgustoapiversion.md)                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1ContractorsContractorUuidOnboardingStatusResponse)](../../models/operations/getv1contractorscontractoruuidonboardingstatusresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## update_onboarding_status

Updates a contractor's onboarding status.

Below is a list of valid onboarding status changes depending on the intended action to be performed on behalf of the contractor.

| Action | current onboarding_status | new onboarding_status |
|:------------------|:------------:|----------:|
| Mark a contractor as self-onboarding | `admin_onboarding_incomplete` | `self_onboarding_not_invited` |
| Invite a contractor to self-onboard | `admin_onboarding_incomplete` or `self_onboarding_not_invited` | `self_onboarding_invited` |
| Cancel a contractor's self-onboarding | `self_onboarding_invited` or `self_onboarding_not_invited` | `admin_onboarding_incomplete` |
| Review a contractor's self-onboarded info | `self_onboarding_started` | `self_onboarding_review` |
| Finish a contractor's onboarding | `admin_onboarding_review` or `self_onboarding_review` | `onboarding_completed` |

scope: `contractors:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-contractors-contractor_uuid-onboarding_status" method="put" path="/v1/contractors/{contractor_uuid}/onboarding_status" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractors.update_onboarding_status(contractor_uuid: '<id>', body: Models::Shared::ContractorOnboardingStatusUpdateRequestBody.new(
  onboarding_status: Models::Shared::ContractorOnboardingStatusUpdateRequestBodyOnboardingStatus::SELF_ONBOARDING_STARTED
), x_gusto_api_version: Models::Operations::PutV1ContractorsContractorUuidOnboardingStatusHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.contractor_onboarding_status.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `body`                                                                                                                                                                                                                       | [Models::Shared::ContractorOnboardingStatusUpdateRequestBody](../../models/shared/contractoronboardingstatusupdaterequestbody.md)                                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1ContractorsContractorUuidOnboardingStatusHeaderXGustoAPIVersion)](../../models/operations/putv1contractorscontractoruuidonboardingstatusheaderxgustoapiversion.md)                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1ContractorsContractorUuidOnboardingStatusResponse)](../../models/operations/putv1contractorscontractoruuidonboardingstatusresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_address

The address of a contractor is used to determine certain tax information about them. Addresses are geocoded on create and update to ensure validity.

scope: `contractors:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-contractors-contractor_uuid-address" method="get" path="/v1/contractors/{contractor_uuid}/address" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractors.get_address(contractor_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1ContractorsContractorUuidAddressHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.contractor_address.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1ContractorsContractorUuidAddressHeaderXGustoAPIVersion)](../../models/operations/getv1contractorscontractoruuidaddressheaderxgustoapiversion.md)                                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1ContractorsContractorUuidAddressResponse)](../../models/operations/getv1contractorscontractoruuidaddressresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## update_address

The address of a contractor is used to determine certain tax information about them. Addresses are geocoded on create and update to ensure validity.

> 🚧 Contractors can only have one address.
>
> When a contractor is created, an address is created for them by default. Updating the address will replace the existing address.

scope: `contractors:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-contractors-contractor_uuid-address" method="put" path="/v1/contractors/{contractor_uuid}/address" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractors.update_address(contractor_uuid: '<id>', body: Models::Shared::ContractorAddressUpdateBody.new(
  version: '56d00c178bc7393b2a206ed6a86afcb4'
), x_gusto_api_version: Models::Operations::PutV1ContractorsContractorUuidAddressHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.contractor_address.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `body`                                                                                                                                                                                                                       | [Models::Shared::ContractorAddressUpdateBody](../../models/shared/contractoraddressupdatebody.md)                                                                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1ContractorsContractorUuidAddressHeaderXGustoAPIVersion)](../../models/operations/putv1contractorscontractoruuidaddressheaderxgustoapiversion.md)                                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1ContractorsContractorUuidAddressResponse)](../../models/operations/putv1contractorscontractoruuidaddressresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_v1_companies_company_id_contractors_payment_details

Get payment details for contractors in a company. This endpoint returns a list of all contractors
associated with the specified company, including their payment methods and bank account details
if they are paid via direct deposit.

For contractors paid by direct deposit, the response includes their bank account information
with sensitive data masked for security. The payment details also include information about
how their payments are split if they have multiple bank accounts configured.

For contractors paid by check, only the basic payment method information is returned.

### Response Details
- For direct deposit contractors:
  - Bank account details (masked)
  - Payment splits configuration
  - Routing numbers
  - Account types
- For check payments:
  - Basic payment method designation

### Common Use Cases
- Fetching contractor payment information for payroll processing
- Verifying contractor payment methods
- Reviewing payment split configurations

`encrypted_account_number` is available only with the additional scope `contractor_payment_methods:read:account_numbers`.

scope: `contractor_payment_methods:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-contractors-payment_details" method="get" path="/v1/companies/{company_id}/contractors/payment_details" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractors.get_v1_companies_company_id_contractors_payment_details(company_id: '<id>', x_gusto_api_version: Models::Operations::GetV1CompaniesCompanyIdContractorsPaymentDetailsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.contractor_payment_details_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company. This identifies the company whose contractor payment details you want to retrieve.                                                                                                                  |
| `contractor_uuid`                                                                                                                                                                                                            | *T.nilable(::String)*                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                           | Optional filter to get payment details for a specific contractor. When provided, the response will only include payment details for this contractor.                                                                         |
| `contractor_payment_group_uuid`                                                                                                                                                                                              | *T.nilable(::String)*                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                           | Optional filter to get payment details for contractors in a specific payment group. When provided, the response will only include payment details for contractors in this group.                                             |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompaniesCompanyIdContractorsPaymentDetailsHeaderXGustoAPIVersion)](../../models/operations/getv1companiescompanyidcontractorspaymentdetailsheaderxgustoapiversion.md)                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdContractorsPaymentDetailsResponse)](../../models/operations/getv1companiescompanyidcontractorspaymentdetailsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## post_v1_contractors_contractor_uuid_rehire

## Purpose
Schedules a contractor rehire for a given date. Creates a new employment record for the contractor.

## Prerequisites
Before calling this endpoint:
1. The contractor must be inactive (previously dismissed)
2. The contractor must not already have an upcoming employment

## Related webhooks
- `contractor.reactivated`: Fires when the contractor becomes active again (on or after start_date)

scope: `contractors:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-contractors-contractor_uuid-rehire" method="post" path="/v1/contractors/{contractor_uuid}/rehire" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractors.post_v1_contractors_contractor_uuid_rehire(contractor_uuid: '<id>', x_gusto_api_version: Models::Operations::PostV1ContractorsContractorUuidRehireHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15, body: Models::Operations::PostV1ContractorsContractorUuidRehireRequestBody.new(
  start_date: Date.parse('2025-07-01')
))

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1ContractorsContractorUuidRehireHeaderXGustoAPIVersion)](../../models/operations/postv1contractorscontractoruuidrehireheaderxgustoapiversion.md)                                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `body`                                                                                                                                                                                                                       | [T.nilable(Models::Operations::PostV1ContractorsContractorUuidRehireRequestBody)](../../models/operations/postv1contractorscontractoruuidrehirerequestbody.md)                                                               | :heavy_minus_sign:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |

### Response

**[T.nilable(Models::Operations::PostV1ContractorsContractorUuidRehireResponse)](../../models/operations/postv1contractorscontractoruuidrehireresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## delete_v1_contractors_contractor_uuid_rehire

## Purpose
Cancels a pending contractor rehire. For future-dated rehires, cancellation is available anytime before the date.
For past-dated rehires, cancellation is only available within the 2-day grace period.

## Prerequisites
Before calling this endpoint:
- The contractor must have a pending rehire (upcoming employment)

## Related webhooks
- `contractor.deactivated`: Fires when the contractor returns to inactive state after cancellation

scope: `contractors:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-contractors-contractor_uuid-rehire" method="delete" path="/v1/contractors/{contractor_uuid}/rehire" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractors.delete_v1_contractors_contractor_uuid_rehire(contractor_uuid: '<id>', x_gusto_api_version: Models::Operations::DeleteV1ContractorsContractorUuidRehireHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::DeleteV1ContractorsContractorUuidRehireHeaderXGustoAPIVersion)](../../models/operations/deletev1contractorscontractoruuidrehireheaderxgustoapiversion.md)                                     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1ContractorsContractorUuidRehireResponse)](../../models/operations/deletev1contractorscontractoruuidrehireresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## post_v1_contractors_contractor_uuid_termination

## Purpose
Schedules a contractor dismissal for a given date. Supports both immediate (past dates) and future-dated dismissals.

## Prerequisites
Before calling this endpoint:
1. The contractor must be active (no existing pending dismissal)
2. The contractor must have a current employment

## Related webhooks
- `contractor.deactivated`: Fires when the contractor becomes inactive (on or after end_date)

scope: `contractors:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-contractors-contractor_uuid-termination" method="post" path="/v1/contractors/{contractor_uuid}/termination" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractors.post_v1_contractors_contractor_uuid_termination(contractor_uuid: '<id>', x_gusto_api_version: Models::Operations::PostV1ContractorsContractorUuidTerminationHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15, body: Models::Operations::PostV1ContractorsContractorUuidTerminationRequestBody.new(
  end_date: Date.parse('2025-06-15')
))

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1ContractorsContractorUuidTerminationHeaderXGustoAPIVersion)](../../models/operations/postv1contractorscontractoruuidterminationheaderxgustoapiversion.md)                               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `body`                                                                                                                                                                                                                       | [T.nilable(Models::Operations::PostV1ContractorsContractorUuidTerminationRequestBody)](../../models/operations/postv1contractorscontractoruuidterminationrequestbody.md)                                                     | :heavy_minus_sign:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |

### Response

**[T.nilable(Models::Operations::PostV1ContractorsContractorUuidTerminationResponse)](../../models/operations/postv1contractorscontractoruuidterminationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## delete_v1_contractors_contractor_uuid_termination

## Purpose
Cancels a pending contractor dismissal. For future-dated dismissals, cancellation is available anytime before the date.
For past-dated dismissals, cancellation is only available within the 2-day grace period.

## Prerequisites
Before calling this endpoint:
- The contractor must have a pending dismissal (scheduled or within the grace period)

## Related webhooks
- `contractor.reactivated`: Fires when the contractor becomes active again after cancellation

scope: `contractors:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-contractors-contractor_uuid-termination" method="delete" path="/v1/contractors/{contractor_uuid}/termination" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractors.delete_v1_contractors_contractor_uuid_termination(contractor_uuid: '<id>', x_gusto_api_version: Models::Operations::DeleteV1ContractorsContractorUuidTerminationHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::DeleteV1ContractorsContractorUuidTerminationHeaderXGustoAPIVersion)](../../models/operations/deletev1contractorscontractoruuidterminationheaderxgustoapiversion.md)                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1ContractorsContractorUuidTerminationResponse)](../../models/operations/deletev1contractorscontractoruuidterminationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |