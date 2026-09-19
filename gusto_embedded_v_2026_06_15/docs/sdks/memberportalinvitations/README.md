# MemberPortalInvitations

## Overview

### Available Operations

* [post_v1_employees_employee_id_member_portal_invitations](#post_v1_employees_employee_id_member_portal_invitations) - Create an employee member portal invitation
* [get_v1_employees_employee_id_member_portal_invitations](#get_v1_employees_employee_id_member_portal_invitations) - Get an employee member portal invitation
* [delete_v1_employees_employee_id_member_portal_invitations](#delete_v1_employees_employee_id_member_portal_invitations) - Cancel an employee member portal invitation
* [post_v1_contractors_contractor_uuid_member_portal_invitations](#post_v1_contractors_contractor_uuid_member_portal_invitations) - Create a contractor member portal invitation
* [get_v1_contractors_contractor_uuid_member_portal_invitations](#get_v1_contractors_contractor_uuid_member_portal_invitations) - Get a contractor member portal invitation
* [delete_v1_contractors_contractor_uuid_member_portal_invitations](#delete_v1_contractors_contractor_uuid_member_portal_invitations) - Cancel a contractor member portal invitation

## post_v1_employees_employee_id_member_portal_invitations

Generates a member portal invitation for the specified employee. If the employee already has an invitation and its token has expired, calling this endpoint regenerates the invitation and overrides the prior token.

scope: `member_portal_invitation:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-employees-employee_id-member_portal_invitations" method="post" path="/v1/employees/{employee_id}/member_portal_invitations" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.member_portal_invitations.post_v1_employees_employee_id_member_portal_invitations(employee_id: '<id>', x_gusto_api_version: Models::Operations::PostV1EmployeesEmployeeIdMemberPortalInvitationsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1EmployeesEmployeeIdMemberPortalInvitationsHeaderXGustoAPIVersion)](../../models/operations/postv1employeesemployeeidmemberportalinvitationsheaderxgustoapiversion.md)                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1EmployeesEmployeeIdMemberPortalInvitationsResponse)](../../models/operations/postv1employeesemployeeidmemberportalinvitationsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_v1_employees_employee_id_member_portal_invitations

Returns the current status of an employee's member portal invitation (`pending`, `sent`, `verified`, `complete`, or `cancelled`) along with an `expired` flag indicating whether the invitation can still be acted on by the employee.

scope: `member_portal_invitation:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employees-employee_id-member_portal_invitations" method="get" path="/v1/employees/{employee_id}/member_portal_invitations" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.member_portal_invitations.get_v1_employees_employee_id_member_portal_invitations(employee_id: '<id>', x_gusto_api_version: Models::Operations::GetV1EmployeesEmployeeIdMemberPortalInvitationsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.member_portal_invitation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1EmployeesEmployeeIdMemberPortalInvitationsHeaderXGustoAPIVersion)](../../models/operations/getv1employeesemployeeidmemberportalinvitationsheaderxgustoapiversion.md)                     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1EmployeesEmployeeIdMemberPortalInvitationsResponse)](../../models/operations/getv1employeesemployeeidmemberportalinvitationsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## delete_v1_employees_employee_id_member_portal_invitations

Cancels the member portal invitation for the specified employee.

Note: this endpoint does not cancel the employee's self-onboarding flow. If you want the company admin to take full control of onboarding the employee, cancel the self-onboarding request instead.

scope: `member_portal_invitation:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-employees-employee_id-member_portal_invitations" method="delete" path="/v1/employees/{employee_id}/member_portal_invitations" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.member_portal_invitations.delete_v1_employees_employee_id_member_portal_invitations(employee_id: '<id>', x_gusto_api_version: Models::Operations::DeleteV1EmployeesEmployeeIdMemberPortalInvitationsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::DeleteV1EmployeesEmployeeIdMemberPortalInvitationsHeaderXGustoAPIVersion)](../../models/operations/deletev1employeesemployeeidmemberportalinvitationsheaderxgustoapiversion.md)               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1EmployeesEmployeeIdMemberPortalInvitationsResponse)](../../models/operations/deletev1employeesemployeeidmemberportalinvitationsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## post_v1_contractors_contractor_uuid_member_portal_invitations

Generates a member portal invitation for the specified contractor. If the contractor already has an invitation and its token has expired, calling this endpoint regenerates the invitation and overrides the prior token.

scope: `member_portal_invitation:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-contractors-contractor_uuid-member_portal_invitations" method="post" path="/v1/contractors/{contractor_uuid}/member_portal_invitations" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.member_portal_invitations.post_v1_contractors_contractor_uuid_member_portal_invitations(contractor_uuid: '<id>', x_gusto_api_version: Models::Operations::PostV1ContractorsContractorUuidMemberPortalInvitationsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1ContractorsContractorUuidMemberPortalInvitationsHeaderXGustoAPIVersion)](../../models/operations/postv1contractorscontractoruuidmemberportalinvitationsheaderxgustoapiversion.md)       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1ContractorsContractorUuidMemberPortalInvitationsResponse)](../../models/operations/postv1contractorscontractoruuidmemberportalinvitationsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_v1_contractors_contractor_uuid_member_portal_invitations

Returns the current status of a contractor's member portal invitation (`pending`, `sent`, `verified`, `complete`, or `cancelled`) along with an `expired` flag indicating whether the invitation can still be acted on by the contractor.

scope: `member_portal_invitation:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-contractors-contractor_uuid-member_portal_invitations" method="get" path="/v1/contractors/{contractor_uuid}/member_portal_invitations" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.member_portal_invitations.get_v1_contractors_contractor_uuid_member_portal_invitations(contractor_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1ContractorsContractorUuidMemberPortalInvitationsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.member_portal_invitation.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1ContractorsContractorUuidMemberPortalInvitationsHeaderXGustoAPIVersion)](../../models/operations/getv1contractorscontractoruuidmemberportalinvitationsheaderxgustoapiversion.md)         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1ContractorsContractorUuidMemberPortalInvitationsResponse)](../../models/operations/getv1contractorscontractoruuidmemberportalinvitationsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## delete_v1_contractors_contractor_uuid_member_portal_invitations

Cancels the member portal invitation for the specified contractor.

Note: this endpoint does not cancel the contractor's self-onboarding flow. If you want the company admin to take full control of onboarding the contractor, cancel the self-onboarding request instead.

scope: `member_portal_invitation:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-contractors-contractor_uuid-member_portal_invitations" method="delete" path="/v1/contractors/{contractor_uuid}/member_portal_invitations" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.member_portal_invitations.delete_v1_contractors_contractor_uuid_member_portal_invitations(contractor_uuid: '<id>', x_gusto_api_version: Models::Operations::DeleteV1ContractorsContractorUuidMemberPortalInvitationsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::DeleteV1ContractorsContractorUuidMemberPortalInvitationsHeaderXGustoAPIVersion)](../../models/operations/deletev1contractorscontractoruuidmemberportalinvitationsheaderxgustoapiversion.md)   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1ContractorsContractorUuidMemberPortalInvitationsResponse)](../../models/operations/deletev1contractorscontractoruuidmemberportalinvitationsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |