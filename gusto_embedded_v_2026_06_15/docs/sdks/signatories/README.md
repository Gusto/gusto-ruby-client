# Signatories

## Overview

### Available Operations

* [list](#list) - Get the signatories for a company
* [create](#create) - Create a signatory
* [invite](#invite) - Invite a signatory
* [update](#update) - Update a signatory
* [delete](#delete) - Delete a signatory

## list

Returns the signatories for a company. A company has at most one signatory.

## Related guides
- [Signatory Events](doc:signatory-events)

scope: `signatories:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_uuid-signatories" method="get" path="/v1/companies/{company_uuid}/signatories" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.signatories.list(company_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1CompaniesCompanyUuidSignatoriesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.signatories.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompaniesCompanyUuidSignatoriesHeaderXGustoAPIVersion)](../../models/operations/getv1companiescompanyuuidsignatoriesheaderxgustoapiversion.md)                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyUuidSignatoriesResponse)](../../models/operations/getv1companiescompanyuuidsignatoriesresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## create

Creates a company signatory with complete information. The company must not already have a signatory.

A signatory can legally sign forms once the identity verification process is successful. The signatory should be an officer, owner, general partner or LLC member manager, plan administrator, fiduciary, or an authorized representative who is designated to sign agreements on the company's behalf. An officer is the president, vice president, treasurer, chief accounting officer, etc. There can only be a single primary signatory in a company.

### Webhooks
- `signatory.created`: Fires when a signatory is successfully created.

### Related guides
- [Signatory Events](doc:signatory-events)

scope: `signatories:manage`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-company-signatories" method="post" path="/v1/companies/{company_uuid}/signatories" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.signatories.create(company_uuid: '<id>', signatory_create_request: Models::Shared::SignatoryCreateRequest.new(
  first_name: 'Ed',
  last_name: 'Reichert',
  title: '<value>',
  phone: '914.468.8146 x29683',
  birthday: Date.parse('2026-11-04'),
  email: 'Mariah_Huel64@gmail.com',
  ssn: '<value>',
  home_address: Models::Shared::SignatoryCreateRequestHomeAddress.new(
    street_1: '<value>',
    city: 'East Paxtonborough',
    state: 'Rhode Island',
    zip: '37195'
  )
), x_gusto_api_version: Models::Operations::PostV1CompanySignatoriesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.signatory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `signatory_create_request`                                                                                                                                                                                                   | [Models::Shared::SignatoryCreateRequest](../../models/shared/signatorycreaterequest.md)                                                                                                                                      | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1CompanySignatoriesHeaderXGustoAPIVersion)](../../models/operations/postv1companysignatoriesheaderxgustoapiversion.md)                                                                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompanySignatoriesResponse)](../../models/operations/postv1companysignatoriesresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## invite

Creates a signatory with minimal information. This signatory can be invited to provide more information through the [Update a signatory](ref:put-v1-companies-company_uuid-signatories-signatory_uuid) endpoint. This will start the identity verification process and allow the signatory to be verified to sign documents.

## Related guides
- [Signatory Events](doc:signatory-events)

scope: `signatories:manage`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-companies-company_uuid-signatories-invite" method="post" path="/v1/companies/{company_uuid}/signatories/invite" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.signatories.invite(company_uuid: '<id>', signatory_invite_request: Models::Shared::SignatoryInviteRequest.new(
  first_name: 'Madelyn',
  last_name: 'Littel',
  email: 'Harmon_Heidenreich@yahoo.com'
), x_gusto_api_version: Models::Operations::PostV1CompaniesCompanyUuidSignatoriesInviteHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.signatory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `signatory_invite_request`                                                                                                                                                                                                   | [Models::Shared::SignatoryInviteRequest](../../models/shared/signatoryinviterequest.md)                                                                                                                                      | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1CompaniesCompanyUuidSignatoriesInviteHeaderXGustoAPIVersion)](../../models/operations/postv1companiescompanyuuidsignatoriesinviteheaderxgustoapiversion.md)                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompaniesCompanyUuidSignatoriesInviteResponse)](../../models/operations/postv1companiescompanyuuidsignatoriesinviteresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## update

Updates a signatory that has been either invited or created. If the signatory has been created with minimal information through the [Invite a signatory](ref:post-v1-companies-company_uuid-signatories-invite) endpoint, then the first update must contain all attributes specified in the request body in order to start the identity verification process.

## Related guides
- [Signatory Events](doc:signatory-events)

scope: `signatories:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-companies-company_uuid-signatories-signatory_uuid" method="put" path="/v1/companies/{company_uuid}/signatories/{signatory_uuid}" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.signatories.update(company_uuid: '<id>', signatory_uuid: '<id>', signatory_update_request: Models::Shared::SignatoryUpdateRequest.new(
  version: '<value>'
), x_gusto_api_version: Models::Operations::PutV1CompaniesCompanyUuidSignatoriesSignatoryUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.signatory.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `signatory_uuid`                                                                                                                                                                                                             | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the signatory                                                                                                                                                                                                    |
| `signatory_update_request`                                                                                                                                                                                                   | [Models::Shared::SignatoryUpdateRequest](../../models/shared/signatoryupdaterequest.md)                                                                                                                                      | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1CompaniesCompanyUuidSignatoriesSignatoryUuidHeaderXGustoAPIVersion)](../../models/operations/putv1companiescompanyuuidsignatoriessignatoryuuidheaderxgustoapiversion.md)                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1CompaniesCompanyUuidSignatoriesSignatoryUuidResponse)](../../models/operations/putv1companiescompanyuuidsignatoriessignatoryuuidresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 409, 422                                 | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## delete

Deletes a company signatory.

## Related guides
- [Signatory Events](doc:signatory-events)

scope: `signatories:manage`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-companies-company_uuid-signatories-signatory_uuid" method="delete" path="/v1/companies/{company_uuid}/signatories/{signatory_uuid}" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.signatories.delete(company_uuid: '<id>', signatory_uuid: '<id>', x_gusto_api_version: Models::Operations::DeleteV1CompaniesCompanyUuidSignatoriesSignatoryUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `signatory_uuid`                                                                                                                                                                                                             | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the signatory                                                                                                                                                                                                    |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::DeleteV1CompaniesCompanyUuidSignatoriesSignatoryUuidHeaderXGustoAPIVersion)](../../models/operations/deletev1companiescompanyuuidsignatoriessignatoryuuidheaderxgustoapiversion.md)           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1CompaniesCompanyUuidSignatoriesSignatoryUuidResponse)](../../models/operations/deletev1companiescompanyuuidsignatoriessignatoryuuidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |