# CompanyBenefits
(*company_benefits*)

## Overview

### Available Operations

* [create](#create) - Create a company benefit
* [list](#list) - Get benefits for a company
* [get](#get) - Get a company benefit
* [update](#update) - Update a company benefit
* [delete](#delete) - Delete a company benefit
* [get_all](#get_all) - Get all benefits supported by Gusto
* [get_supported](#get_supported) - Get a supported benefit by ID
* [get_summary](#get_summary) - Get company benefit summary by company benefit id.
* [get_employee_benefits](#get_employee_benefits) - Get all employee benefits for a company benefit
* [update_employee_benefits](#update_employee_benefits) - Bulk update employee benefits for a company benefit
* [get_requirements](#get_requirements) - Get benefit fields requirements by ID
* [get_v1_company_benefits_company_benefit_id_contribution_exclusions](#get_v1_company_benefits_company_benefit_id_contribution_exclusions) - Get contribution exclusions for a company benefit
* [put_v1_company_benefits_company_benefit_id_contribution_exclusions](#put_v1_company_benefits_company_benefit_id_contribution_exclusions) - Update contribution exclusions for a company benefit

## create

Company benefits represent the benefits that a company is offering to employees. This ties together a particular supported benefit with the company-specific information for the offering of that benefit.

Note that company benefits can be deactivated only when no employees are enrolled.

When the application has the `company_benefits:write:benefit_type_limited` data scope, the application can only create company benefits for benefit types that are permitted for the application.

scope: `company_benefits:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-companies-company_id-company_benefits" method="post" path="/v1/companies/{company_id}/company_benefits" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.company_benefits.create(company_id: '<id>', request_body: Models::Operations::PostV1CompaniesCompanyIdCompanyBenefitsRequestBody.new(
  description: 'hm pfft surge beyond',
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.company_benefit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostV1CompaniesCompanyIdCompanyBenefitsRequestBody](../../models/operations/postv1companiescompanyidcompanybenefitsrequestbody.md)                                                                      | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompaniesCompanyIdCompanyBenefitsResponse)](../../models/operations/postv1companiescompanyidcompanybenefitsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## list

Company benefits represent the benefits that a company is offering to employees. This ties together a particular supported benefit with the company-specific information for the offering of that benefit.

Note that company benefits can be deactivated only when no employees are enrolled.

Benefits containing PHI are only visible to applications with the `company_benefits:read:phi` scope.

scope: `company_benefits:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-company_id-company_benefits" method="get" path="/v1/companies/{company_id}/company_benefits" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.company_benefits.list(company_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.company_benefit_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `active`                                                                                                                                                                                                                     | *T.nilable(T::Boolean)*                                                                                                                                                                                                      | :heavy_minus_sign:                                                                                                                                                                                                           | Whether the benefit is currently active                                                                                                                                                                                      |
| `enrollment_count`                                                                                                                                                                                                           | *T.nilable(T::Boolean)*                                                                                                                                                                                                      | :heavy_minus_sign:                                                                                                                                                                                                           | Whether to return employee enrollment count                                                                                                                                                                                  |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesCompanyIdCompanyBenefitsResponse)](../../models/operations/getv1companiescompanyidcompanybenefitsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get

Company benefits represent the benefits that a company is offering to employees. This ties together a particular supported benefit with the company-specific information for the offering of that benefit.

Note that company benefits can be deactivated only when no employees are enrolled.

When with_employee_benefits parameter with true value is passed, employee_benefits:read scope is required to return employee_benefits.

scope: `company_benefits:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-company_benefits-company_benefit_id" method="get" path="/v1/company_benefits/{company_benefit_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.company_benefits.get(company_benefit_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.company_benefit_with_employee_benefits.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_benefit_id`                                                                                                                                                                                                         | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company benefit                                                                                                                                                                                              |
| `with_employee_benefits`                                                                                                                                                                                                     | *T.nilable(T::Boolean)*                                                                                                                                                                                                      | :heavy_minus_sign:                                                                                                                                                                                                           | Whether to return employee benefits associated with the benefit                                                                                                                                                              |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompanyBenefitsCompanyBenefitIdResponse)](../../models/operations/getv1companybenefitscompanybenefitidresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update

Company benefits represent the benefits that a company is offering to employees. This ties together a particular supported benefit with the company-specific information for the offering of that benefit.

Note that company benefits can be deactivated only when no employees are enrolled.

When the application has the `company_benefits:write:benefit_type_limited` data scope, the application can only update company benefits for benefit types that are permitted for the application.

scope: `company_benefits:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-company_benefits-company_benefit_id" method="put" path="/v1/company_benefits/{company_benefit_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.company_benefits.update(company_benefit_id: '<id>', request_body: Models::Operations::PutV1CompanyBenefitsCompanyBenefitIdRequestBody.new(
  version: '98jr3289h3298hr9329gf9egskt3kagri32qqgiqe3872',
  active: false,
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.company_benefit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_benefit_id`                                                                                                                                                                                                         | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company benefit                                                                                                                                                                                              |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1CompanyBenefitsCompanyBenefitIdRequestBody](../../models/operations/putv1companybenefitscompanybenefitidrequestbody.md)                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1CompanyBenefitsCompanyBenefitIdResponse)](../../models/operations/putv1companybenefitscompanybenefitidresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## delete

The following must be true in order to delete a company benefit
  - There are no employee benefits associated with the company benefit
  - There are no payroll items associated with the company benefit
  - The benefit is not managed by a Partner or by Gusto (type must be 'External')

When the application has the `company_benefits:write:benefit_type_limited` data scope, the application can only delete company benefits for benefit types that are permitted for the application.

scope: `company_benefits:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-company_benefits-company_benefit_id" method="delete" path="/v1/company_benefits/{company_benefit_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.company_benefits.delete(company_benefit_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_benefit_id`                                                                                                                                                                                                         | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company benefit                                                                                                                                                                                              |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::DeleteV1CompanyBenefitsCompanyBenefitIdResponse)](../../models/operations/deletev1companybenefitscompanybenefitidresponse.md)**

### Errors

| Error Type                                                          | Status Code                                                         | Content Type                                                        |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| Models::Errors::DeleteV1CompanyBenefitsCompanyBenefitIdResponseBody | 422                                                                 | application/json                                                    |
| Errors::APIError                                                    | 4XX, 5XX                                                            | \*/\*                                                               |

## get_all

Returns all benefits supported by Gusto.

The benefit object in Gusto contains high level information about a particular benefit type and its tax considerations. When companies choose to offer a benefit, they are creating a Company Benefit object associated with a particular benefit.

scope: `benefits:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-benefits" method="get" path="/v1/benefits" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.company_benefits.get_all(x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.supported_benefit_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1BenefitsResponse)](../../models/operations/getv1benefitsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_supported

Returns a benefit supported by Gusto.

The benefit object in Gusto contains high level information about a particular benefit type and its tax considerations. When companies choose to offer a benefit, they are creating a Company Benefit object associated with a particular benefit.

scope: `benefits:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-benefits-benefit_id" method="get" path="/v1/benefits/{benefit_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.company_benefits.get_supported(benefit_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.supported_benefit.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `benefit_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The benefit type in Gusto.                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1BenefitsBenefitIdResponse)](../../models/operations/getv1benefitsbenefitidresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_summary

Returns summary benefit data for the requested company benefit id.

Benefits containing PHI are only visible to applications with the `company_benefits:read:phi` scope.

scope: `company_benefits:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-benefits-company_benefit_id-summary" method="get" path="/v1/company_benefits/{company_benefit_id}/summary" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

req = Models::Operations::GetV1BenefitsCompanyBenefitIdSummaryRequest.new(
  company_benefit_id: '<id>',
  start_date: '2022-01-01',
  end_date: '2022-12-31',
)

res = s.company_benefits.get_summary(request: req)

unless res.benefit_summary.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                 | Type                                                                                                                                      | Required                                                                                                                                  | Description                                                                                                                               |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                 | [Models::Operations::GetV1BenefitsCompanyBenefitIdSummaryRequest](../../models/operations/getv1benefitscompanybenefitidsummaryrequest.md) | :heavy_check_mark:                                                                                                                        | The request object to use for the request.                                                                                                |

### Response

**[T.nilable(Models::Operations::GetV1BenefitsCompanyBenefitIdSummaryResponse)](../../models/operations/getv1benefitscompanybenefitidsummaryresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_employee_benefits

Employee benefits represent an employee enrolled in a particular company benefit. It includes information specific to that employee’s enrollment.

Returns an array of all employee benefits enrolled for this company benefit.

Benefits containing PHI are only visible to applications with the `employee_benefits:read:phi` scope.

scope: `employee_benefits:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-company_benefits-company_benefit_id-employee_benefits" method="get" path="/v1/company_benefits/{company_benefit_id}/employee_benefits" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.company_benefits.get_employee_benefits(company_benefit_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.employee_benefit_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_benefit_id`                                                                                                                                                                                                         | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company benefit                                                                                                                                                                                              |
| `page`                                                                                                                                                                                                                       | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | The page that is requested. When unspecified, will load all objects unless endpoint forces pagination.                                                                                                                       |
| `per`                                                                                                                                                                                                                        | *T.nilable(::Integer)*                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Number of objects per page. For majority of endpoints will default to 25                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompanyBenefitsCompanyBenefitIdEmployeeBenefitsResponse)](../../models/operations/getv1companybenefitscompanybenefitidemployeebenefitsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update_employee_benefits

Employee benefits represent an employee enrolled in a particular company benefit. It includes information specific to that employee's enrollment.

Create or update(if the employee is already enrolled in the company benefit previously) an employee benefit for the company benefit.

Benefits containing PHI are only visible to applications with the `employee_benefits:read:phi` scope.

When the application has the `employee_benefits:write:benefit_type_limited` data scope, the application can only create or update employee benefits for benefit types that are permitted for the application.

scope: `employee_benefits:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-company_benefits-company_benefit_id-employee_benefits" method="put" path="/v1/company_benefits/{company_benefit_id}/employee_benefits" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.company_benefits.update_employee_benefits(company_benefit_id: '<id>', request_body: Models::Operations::PutV1CompanyBenefitsCompanyBenefitIdEmployeeBenefitsRequestBody.new(
  employee_benefits: [
    Models::Shared::EmployeeBenefitForCompanyBenefit.new(
      version: '09j3d29jqdpj92109j9j2d90dq',
      employee_deduction: '250.00',
      employee_uuid: '8f9f3f68-8fd3-499d-ade7-4a052e56494e',
    ),
  ],
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.employee_benefit_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_benefit_id`                                                                                                                                                                                                         | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company benefit                                                                                                                                                                                              |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1CompanyBenefitsCompanyBenefitIdEmployeeBenefitsRequestBody](../../models/operations/putv1companybenefitscompanybenefitidemployeebenefitsrequestbody.md)                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1CompanyBenefitsCompanyBenefitIdEmployeeBenefitsResponse)](../../models/operations/putv1companybenefitscompanybenefitidemployeebenefitsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |

## get_requirements

Returns field requirements for the requested benefit type.

scope: `benefits:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-benefits-benefits_id-requirements" method="get" path="/v1/benefits/{benefit_id}/requirements" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.company_benefits.get_requirements(benefit_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.benefit_type_requirements.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `benefit_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The benefit type in Gusto.                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1BenefitsBenefitsIdRequirementsResponse)](../../models/operations/getv1benefitsbenefitsidrequirementsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_v1_company_benefits_company_benefit_id_contribution_exclusions

Returns all contributions for a given company benefit and whether they are excluded or not.

Currently this endpoint only works for 401-k and Roth 401-k benefit types.

scope: `company_benefits:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-company_benefits-company_benefit_id-contribution_exclusions" method="get" path="/v1/company_benefits/{company_benefit_id}/contribution_exclusions" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.company_benefits.get_v1_company_benefits_company_benefit_id_contribution_exclusions(company_benefit_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.contribution_exclusion_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_benefit_id`                                                                                                                                                                                                         | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company benefit                                                                                                                                                                                              |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompanyBenefitsCompanyBenefitIdContributionExclusionsResponse)](../../models/operations/getv1companybenefitscompanybenefitidcontributionexclusionsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## put_v1_company_benefits_company_benefit_id_contribution_exclusions

Updates contribution exclusions for a given company benefit.

Currently this endpoint only works for 401-k and Roth 401-k benefit types.

scope: `company_benefits:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-company_benefits-company_benefit_id-contribution_exclusions" method="put" path="/v1/company_benefits/{company_benefit_id}/contribution_exclusions" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.company_benefits.put_v1_company_benefits_company_benefit_id_contribution_exclusions(company_benefit_id: '<id>', request_body: Models::Operations::PutV1CompanyBenefitsCompanyBenefitIdContributionExclusionsRequestBody.new(
  contribution_exclusions: [
    Models::Shared::ContributionExclusion.new(
      contribution_uuid: '082dfd3e-5b55-11f0-bb42-ab7136ba04e2',
      contribution_type: 'Bonus',
      excluded: true,
    ),
    Models::Shared::ContributionExclusion.new(
      contribution_uuid: '082e034c-5b55-11f0-bb42-ab7136ba04e2',
      contribution_type: 'Commission',
      excluded: false,
    ),
    Models::Shared::ContributionExclusion.new(
      contribution_uuid: '082e1f6c-5b55-11f0-bb42-ab7136ba04e2',
      contribution_type: 'Regular',
      excluded: true,
    ),
  ],
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.contribution_exclusion_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_benefit_id`                                                                                                                                                                                                         | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company benefit                                                                                                                                                                                              |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1CompanyBenefitsCompanyBenefitIdContributionExclusionsRequestBody](../../models/operations/putv1companybenefitscompanybenefitidcontributionexclusionsrequestbody.md)                                | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1CompanyBenefitsCompanyBenefitIdContributionExclusionsResponse)](../../models/operations/putv1companybenefitscompanybenefitidcontributionexclusionsresponse.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |