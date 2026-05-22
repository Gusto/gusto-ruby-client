# Companies

## Overview

### Available Operations

* [create_partner_managed](#create_partner_managed) - Create a partner managed company
* [get](#get) - Get a company
* [update](#update) - Update a company
* [migrate](#migrate) - Migrate company to embedded payroll
* [get_v1_partner_managed_companies_company_uuid_migration_readiness](#get_v1_partner_managed_companies_company_uuid_migration_readiness) - Check company migration readiness
* [accept_terms_of_service](#accept_terms_of_service) - Accept terms of service for a company user
* [retrieve_terms_of_service](#retrieve_terms_of_service) - Retrieve terms of service status for a company user
* [list_admins](#list_admins) - Get all the admins at a company
* [create_admin](#create_admin) - Create an admin for the company
* [get_onboarding_status](#get_onboarding_status) - Get company onboarding status
* [finish_onboarding](#finish_onboarding) - Finish company onboarding
* [get_custom_fields](#get_custom_fields) - Get the custom fields of a company

## create_partner_managed

Create a partner managed company. When you successfully call the API, it does the following:
* Creates a new company in Gusto
* Creates a new user using the provided email if the user does not already exist.
* Makes the user the primary payroll administrator of the new company.

In response, you will receive oauth access tokens for the created company.

IMPORTANT: the returned access and refresh tokens are reserved for this company only. They cannot be used to access other companies AND previously granted tokens cannot be used to access this company.

📘 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `partner_managed_companies:manage`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-partner-managed-companies" method="post" path="/v1/partner_managed_companies" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.companies.create_partner_managed(security: Models::Operations::PostV1PartnerManagedCompaniesSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
), body: Models::Shared::PartnerManagedCompanyCreateRequest.new(
  user: Models::Shared::User.new(
    first_name: 'Marco',
    last_name: 'Trantow',
    email: 'Jewell_Greenholt72@hotmail.com'
  ),
  company: Models::Shared::PartnerManagedCompanyCreateRequestCompany.new(
    name: '<value>'
  )
), x_gusto_api_version: Models::Operations::PostV1PartnerManagedCompaniesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.partner_managed_company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [Models::Operations::PostV1PartnerManagedCompaniesSecurity](../../models/operations/postv1partnermanagedcompaniessecurity.md)                                                                                                | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `body`                                                                                                                                                                                                                       | [Models::Shared::PartnerManagedCompanyCreateRequest](../../models/shared/partnermanagedcompanycreaterequest.md)                                                                                                              | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1PartnerManagedCompaniesHeaderXGustoAPIVersion)](../../models/operations/postv1partnermanagedcompaniesheaderxgustoapiversion.md)                                                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1PartnerManagedCompaniesResponse)](../../models/operations/postv1partnermanagedcompaniesresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get

Get a company.

The employees:read scope is required to return home_address and non-work locations.
The company_admin:read scope is required to return primary_payroll_admin.
The signatories:read scope is required to return primary_signatory.

scope: `companies:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies" method="get" path="/v1/companies/{company_id}" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.companies.get(company_id: '<id>', x_gusto_api_version: Models::Operations::GetV1CompaniesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompaniesHeaderXGustoAPIVersion)](../../models/operations/getv1companiesheaderxgustoapiversion.md)                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesResponse)](../../models/operations/getv1companiesresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## update

Update a company.

scope: `companies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-companies" method="put" path="/v1/companies/{company_id}" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.companies.update(company_id: '<id>', body: Models::Operations::PutV1CompaniesRequestBody.new(
  contractor_only: true
), x_gusto_api_version: Models::Operations::PutV1CompaniesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.company.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `body`                                                                                                                                                                                                                       | [Models::Operations::PutV1CompaniesRequestBody](../../models/operations/putv1companiesrequestbody.md)                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1CompaniesHeaderXGustoAPIVersion)](../../models/operations/putv1companiesheaderxgustoapiversion.md)                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1CompaniesResponse)](../../models/operations/putv1companiesresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## migrate

Migrate an existing Gusto customer to your embedded payroll product.

### Prerequisites
Before calling this endpoint:
1. The customer must connect their Gusto account to your application using [OAuth2](doc:oauth2)
2. The customer must view and [accept the Embedded Payroll Terms of Service](ref:post-partner-managed-companies-company_uuid-accept_terms_of_service)

### Related guides
- [Migrate an existing company](doc:migrate-existing-company)

scope: `partner_managed_companies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-partner-managed-companies-company-uuid-migrate" method="put" path="/v1/partner_managed_companies/{company_uuid}/migrate" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.companies.migrate(company_uuid: '<id>', body: Models::Shared::PartnerManagedCompanyMigrateRequest.new(
  email: 'Janice18@gmail.com'
), x_gusto_api_version: Models::Operations::PutV1PartnerManagedCompaniesCompanyUuidMigrateHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.partner_managed_company_migrate_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `body`                                                                                                                                                                                                                       | [Models::Shared::PartnerManagedCompanyMigrateRequest](../../models/shared/partnermanagedcompanymigraterequest.md)                                                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1PartnerManagedCompaniesCompanyUuidMigrateHeaderXGustoAPIVersion)](../../models/operations/putv1partnermanagedcompaniescompanyuuidmigrateheaderxgustoapiversion.md)                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1PartnerManagedCompaniesCompanyUuidMigrateResponse)](../../models/operations/putv1partnermanagedcompaniescompanyuuidmigrateresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_v1_partner_managed_companies_company_uuid_migration_readiness

Check if an existing Gusto customer is ready to be migrated to embedded payroll. This endpoint returns blockers and warnings associated with migrating the company and is recommended to be called before attempting to migrate a company.

scope: `partner_managed_companies:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-partner-managed-companies-company-uuid-migration_readiness" method="get" path="/v1/partner_managed_companies/{company_uuid}/migration_readiness" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.companies.get_v1_partner_managed_companies_company_uuid_migration_readiness(company_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1PartnerManagedCompaniesCompanyUuidMigrationReadinessHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.partner_managed_company_migration_readiness_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1PartnerManagedCompaniesCompanyUuidMigrationReadinessHeaderXGustoAPIVersion)](../../models/operations/getv1partnermanagedcompaniescompanyuuidmigrationreadinessheaderxgustoapiversion.md) | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1PartnerManagedCompaniesCompanyUuidMigrationReadinessResponse)](../../models/operations/getv1partnermanagedcompaniescompanyuuidmigrationreadinessresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## accept_terms_of_service

Accept the Gusto Embedded Payroll's [Terms of Service](https://flows.gusto.com/terms).
The user must have a role in the company in order to accept the Terms of Service.

scope: `terms_of_services:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-partner-managed-companies-company_uuid-accept_terms_of_service" method="post" path="/v1/partner_managed_companies/{company_uuid}/accept_terms_of_service" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.companies.accept_terms_of_service(company_uuid: '<id>', body: Models::Shared::PartnerManagedCompanyAcceptTermsOfServiceRequest.new(
  email: 'Tabitha59@hotmail.com',
  ip_address: 'dad9:5ede:cdbf:8dae:abe7:3cac:a2bf:2c26',
  external_user_id: '<id>'
), x_gusto_api_version: Models::Operations::PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.partner_managed_company_terms_of_service_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                      | Type                                                                                                                                                                                                                           | Required                                                                                                                                                                                                                       | Description                                                                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `company_uuid`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                     | :heavy_check_mark:                                                                                                                                                                                                             | The UUID of the company                                                                                                                                                                                                        |
| `body`                                                                                                                                                                                                                         | [Models::Shared::PartnerManagedCompanyAcceptTermsOfServiceRequest](../../models/shared/partnermanagedcompanyaccepttermsofservicerequest.md)                                                                                    | :heavy_check_mark:                                                                                                                                                                                                             | N/A                                                                                                                                                                                                                            |
| `x_gusto_api_version`                                                                                                                                                                                                          | [T.nilable(Models::Operations::PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceHeaderXGustoAPIVersion)](../../models/operations/postpartnermanagedcompaniescompanyuuidaccepttermsofserviceheaderxgustoapiversion.md) | :heavy_minus_sign:                                                                                                                                                                                                             | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.   |

### Response

**[T.nilable(Models::Operations::PostPartnerManagedCompaniesCompanyUuidAcceptTermsOfServiceResponse)](../../models/operations/postpartnermanagedcompaniescompanyuuidaccepttermsofserviceresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## retrieve_terms_of_service

Retrieve the user acceptance status of the Gusto Embedded Payroll's [Terms of Service](https://flows.gusto.com/terms).

scope: `terms_of_services:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-partner-managed-companies-company_uuid-retrieve_terms_of_service" method="post" path="/v1/partner_managed_companies/{company_uuid}/retrieve_terms_of_service" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.companies.retrieve_terms_of_service(company_uuid: '<id>', body: Models::Shared::PartnerManagedCompanyRetrieveTermsOfServiceRequest.new(
  email: 'Laverne_Raynor-Ziemann@yahoo.com'
), x_gusto_api_version: Models::Operations::PostPartnerManagedCompaniesCompanyUuidRetrieveTermsOfServiceHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.partner_managed_company_terms_of_service_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                        | Type                                                                                                                                                                                                                             | Required                                                                                                                                                                                                                         | Description                                                                                                                                                                                                                      |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                                   | *::String*                                                                                                                                                                                                                       | :heavy_check_mark:                                                                                                                                                                                                               | The UUID of the company                                                                                                                                                                                                          |
| `body`                                                                                                                                                                                                                           | [Models::Shared::PartnerManagedCompanyRetrieveTermsOfServiceRequest](../../models/shared/partnermanagedcompanyretrievetermsofservicerequest.md)                                                                                  | :heavy_check_mark:                                                                                                                                                                                                               | N/A                                                                                                                                                                                                                              |
| `x_gusto_api_version`                                                                                                                                                                                                            | [T.nilable(Models::Operations::PostPartnerManagedCompaniesCompanyUuidRetrieveTermsOfServiceHeaderXGustoAPIVersion)](../../models/operations/postpartnermanagedcompaniescompanyuuidretrievetermsofserviceheaderxgustoa_d51492.md) | :heavy_minus_sign:                                                                                                                                                                                                               | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.     |

### Response

**[T.nilable(Models::Operations::PostPartnerManagedCompaniesCompanyUuidRetrieveTermsOfServiceResponse)](../../models/operations/postpartnermanagedcompaniescompanyuuidretrievetermsofserviceresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## list_admins

Returns a list of all the admins at a company

scope: `company_admin:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-admins" method="get" path="/v1/companies/{company_id}/admins" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.companies.list_admins(company_id: '<id>', x_gusto_api_version: Models::Operations::GetV1CompaniesCompanyIdAdminsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.admins.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompaniesCompanyIdAdminsHeaderXGustoAPIVersion)](../../models/operations/getv1companiescompanyidadminsheaderxgustoapiversion.md)                                                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `page`                                                                                                                                                                                                                       | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | The page that is requested. When unspecified, will load all objects unless endpoint forces pagination.                                                                                                                       |
| `per`                                                                                                                                                                                                                        | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Number of objects per page. For majority of endpoints will default to 25                                                                                                                                                     |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdAdminsResponse)](../../models/operations/getv1companiescompanyidadminsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## create_admin

Creates a new admin for a company.
If the email matches an existing user, this will create an admin account for the current user. Otherwise, this will create a new user.

scope: `company_admin:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-companies-company_id-admins" method="post" path="/v1/companies/{company_id}/admins" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.companies.create_admin(company_id: '<id>', body: Models::Shared::AdminCreateRequest.new(
  first_name: 'John',
  last_name: 'Smith',
  email: 'jsmith99@gmail.com'
), x_gusto_api_version: Models::Operations::PostV1CompaniesCompanyIdAdminsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.admin.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `body`                                                                                                                                                                                                                       | [Models::Shared::AdminCreateRequest](../../models/shared/admincreaterequest.md)                                                                                                                                              | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1CompaniesCompanyIdAdminsHeaderXGustoAPIVersion)](../../models/operations/postv1companiescompanyidadminsheaderxgustoapiversion.md)                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompaniesCompanyIdAdminsResponse)](../../models/operations/postv1companiescompanyidadminsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_onboarding_status

Retrieves a company's onboarding status, including whether onboarding is complete and the list of
required onboarding steps with their respective completion state.

scope: `company_onboarding_status:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-company-onboarding-status" method="get" path="/v1/companies/{company_uuid}/onboarding_status" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.companies.get_onboarding_status(company_uuid: '7b1d0df1-6403-4a06-8768-c1dd7d24d27a', additional_steps: 'external_payroll', x_gusto_api_version: Models::Operations::GetV1CompanyOnboardingStatusHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.company_onboarding_status.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  | Example                                                                                                                                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      | 7b1d0df1-6403-4a06-8768-c1dd7d24d27a                                                                                                                                                                                         |
| `additional_steps`                                                                                                                                                                                                           | *T.nilable(::String)*                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                           | Comma-delimited string of additional onboarding steps to include. Currently only supports the value "external_payroll".                                                                                                      | external_payroll                                                                                                                                                                                                             |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompanyOnboardingStatusHeaderXGustoAPIVersion)](../../models/operations/getv1companyonboardingstatusheaderxgustoapiversion.md)                                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |                                                                                                                                                                                                                              |

### Response

**[T.nilable(Models::Operations::GetV1CompanyOnboardingStatusResponse)](../../models/operations/getv1companyonboardingstatusresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## finish_onboarding

Finalize a company's onboarding process.

### Approve a company in demo

After a company is finished onboarding, Gusto requires an additional step to review and approve that company.
The company onboarding status is "onboarding_completed": false, until the API call is made to finish company
onboarding. In production environments, this step is required for risk-analysis purposes.

We provide the endpoint `PUT '/v1/companies/{company_uuid}/approve'` to facilitate company approvals in the demo environment.

```shell
PUT '/v1/companies/89771af8-b964-472e-8064-554dfbcb56d9/approve'

# Response: Company object, with company_status: 'Approved'
```

scope: `companies:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-company-finish-onboarding" method="put" path="/v1/companies/{company_uuid}/finish_onboarding" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.companies.finish_onboarding(company_uuid: '7b1d0df1-6403-4a06-8768-c1dd7d24d27a', x_gusto_api_version: Models::Operations::GetV1CompanyFinishOnboardingHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.company_onboarding_status.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  | Example                                                                                                                                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      | 7b1d0df1-6403-4a06-8768-c1dd7d24d27a                                                                                                                                                                                         |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompanyFinishOnboardingHeaderXGustoAPIVersion)](../../models/operations/getv1companyfinishonboardingheaderxgustoapiversion.md)                                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |                                                                                                                                                                                                                              |

### Response

**[T.nilable(Models::Operations::GetV1CompanyFinishOnboardingResponse)](../../models/operations/getv1companyfinishonboardingresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_custom_fields

Returns a list of the custom fields of the company. Useful when you need to know the schema of custom fields for an entire company.

scope: `companies:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-custom_fields" method="get" path="/v1/companies/{company_id}/custom_fields" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.companies.get_custom_fields(company_id: '<id>', x_gusto_api_version: Models::Operations::GetV1CompaniesCompanyIdCustomFieldsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.company_custom_field_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompaniesCompanyIdCustomFieldsHeaderXGustoAPIVersion)](../../models/operations/getv1companiescompanyidcustomfieldsheaderxgustoapiversion.md)                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `page`                                                                                                                                                                                                                       | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | The page that is requested. When unspecified, will load all objects unless endpoint forces pagination.                                                                                                                       |
| `per`                                                                                                                                                                                                                        | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Number of objects per page. For majority of endpoints will default to 25                                                                                                                                                     |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdCustomFieldsResponse)](../../models/operations/getv1companiescompanyidcustomfieldsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |