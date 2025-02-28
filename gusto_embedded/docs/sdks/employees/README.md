# Employees
(*employees*)

## Overview

### Available Operations

* [create](#create) - Create an employee
* [list](#list) - Get employees of a company
* [create_historical](#create_historical) - Create a historical employee
* [get](#get) - Get an employee
* [update](#update) - Update an employee
* [delete](#delete) - Delete an onboarding employee
* [get_custom_fields](#get_custom_fields) - Get an employee's custom fields
* [update_onboarding_documents_config](#update_onboarding_documents_config) - Update an employee's onboarding documents config
* [get_onboarding_status](#get_onboarding_status) - Get the employee's onboarding status
* [update_onboarding_status](#update_onboarding_status) - Update the employee's onboarding status
* [get_time_off_activities](#get_time_off_activities) - Get employee time off activities

## create

Create an employee.

scope: `employees:manage`

### Example Usage

```ruby
require 'gusto'


s = ::GustoEmbedded::Client.new
s.config_security(
  ::GustoEmbedded::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employees.create(company_id="<id>", request_body=::GustoEmbedded::Operations::PostV1EmployeesRequestBody.new(
  first_name: "Jed",
  last_name: "Johnson",
), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PostV1EmployeesRequestBody](../../models/operations/postv1employeesrequestbody.md)                                                                                                             | :heavy_check_mark:                                                                                                                                                                                                           | Create an employee.                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PostV1EmployeesResponse)](../../models/operations/postv1employeesresponse.md)**



## list

Get all of the employees, onboarding, active and terminated, for a given company.

scope: `employees:read`

### Example Usage

```ruby
require 'gusto'


s = ::GustoEmbedded::Client.new
s.config_security(
  ::GustoEmbedded::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::GustoEmbedded::Operations::GetV1CompaniesCompanyIdEmployeesRequest.new(
  company_id: "<id>",
)
    
res = s.employees.list(req)

if ! res.employee_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                  | Type                                                                                                                                       | Required                                                                                                                                   | Description                                                                                                                                |
| ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                  | [::GustoEmbedded::Operations::GetV1CompaniesCompanyIdEmployeesRequest](../../models/operations/getv1companiescompanyidemployeesrequest.md) | :heavy_check_mark:                                                                                                                         | The request object to use for the request.                                                                                                 |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1CompaniesCompanyIdEmployeesResponse)](../../models/operations/getv1companiescompanyidemployeesresponse.md)**



## create_historical

Create a historical employee, an employee that was previously dismissed from the company in the current year.

scope: `employees:manage`

### Example Usage

```ruby
require 'gusto'


s = ::GustoEmbedded::Client.new
s.config_security(
  ::GustoEmbedded::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employees.create_historical(company_uuid="<id>", historical_employee_body=::GustoEmbedded::Shared::HistoricalEmployeeBody.new(
  first_name: "Cortez",
  last_name: "Dickens",
  date_of_birth: "1995-11-27",
  ssn: "<value>",
  work_address: ::GustoEmbedded::Shared::WorkAddress.new(),
  home_address: ::GustoEmbedded::Shared::HistoricalEmployeeBodyHomeAddress.new(
    street_1: "<value>",
    city: "Port Gustavehaven",
    state: "Maine",
    zip: "79036-5048",
  ),
  termination: ::GustoEmbedded::Shared::HistoricalEmployeeBodyTermination.new(),
  job: ::GustoEmbedded::Shared::HistoricalEmployeeBodyJob.new(),
), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `historical_employee_body`                                                                                                                                                                                                   | [::GustoEmbedded::Shared::HistoricalEmployeeBody](../../models/shared/historicalemployeebody.md)                                                                                                                             | :heavy_check_mark:                                                                                                                                                                                                           | Create a historical employee.                                                                                                                                                                                                |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PostV1HistoricalEmployeesResponse)](../../models/operations/postv1historicalemployeesresponse.md)**



## get

Get an employee.

scope: `employees:read`


### Example Usage

```ruby
require 'gusto'


s = ::GustoEmbedded::Client.new
s.config_security(
  ::GustoEmbedded::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employees.get(employee_id="<id>", include=[
  ::GustoEmbedded::Operations::QueryParamInclude::CUSTOM_FIELDS,
], x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                     | Type                                                                                                                                                                                                                                                                                          | Required                                                                                                                                                                                                                                                                                      | Description                                                                                                                                                                                                                                                                                   |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                                                                                    | :heavy_check_mark:                                                                                                                                                                                                                                                                            | The UUID of the employee                                                                                                                                                                                                                                                                      |
| `include`                                                                                                                                                                                                                                                                                     | T::Array<[::GustoEmbedded::Operations::QueryParamInclude](../../models/operations/queryparaminclude.md)>                                                                                                                                                                                      | :heavy_minus_sign:                                                                                                                                                                                                                                                                            | Include the requested attribute(s) in each employee response, multiple options are comma separated. Available options:<br/>- all_compensations: Include all effective dated compensations for each job instead of only the current compensation<br/>- custom_fields: Include employees' custom fields |
| `x_gusto_api_version`                                                                                                                                                                                                                                                                         | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                                                                                     | :heavy_minus_sign:                                                                                                                                                                                                                                                                            | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.                                                                  |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1EmployeesResponse)](../../models/operations/getv1employeesresponse.md)**



## update

Update an employee.

scope: `employees:write`

### Example Usage

```ruby
require 'gusto'


s = ::GustoEmbedded::Client.new
s.config_security(
  ::GustoEmbedded::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employees.update(employee_id="<id>", request_body=::GustoEmbedded::Operations::PutV1EmployeesRequestBody.new(
  version: "<value>",
), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PutV1EmployeesRequestBody](../../models/operations/putv1employeesrequestbody.md)                                                                                                               | :heavy_check_mark:                                                                                                                                                                                                           | Update an employee.                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PutV1EmployeesResponse)](../../models/operations/putv1employeesresponse.md)**



## delete

Use this endpoint to delete an employee who is in onboarding. Deleting
an onboarded employee is not allowed and will return a 422 response. Please check out the Terminations api
if you need to terminate an onboarded employee.

scope: `employees:manage`

### Example Usage

```ruby
require 'gusto'


s = ::GustoEmbedded::Client.new
s.config_security(
  ::GustoEmbedded::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employees.delete(employee_id="<id>", x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::DeleteV1EmployeeResponse)](../../models/operations/deletev1employeeresponse.md)**



## get_custom_fields

Returns a list of the employee's custom fields.

scope: `employees:read`

### Example Usage

```ruby
require 'gusto'


s = ::GustoEmbedded::Client.new
s.config_security(
  ::GustoEmbedded::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employees.get_custom_fields(employee_id="<id>", page=6531.7, per=3092.2, x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `page`                                                                                                                                                                                                                       | *T.nilable(::Float)*                                                                                                                                                                                                         | :heavy_minus_sign:                                                                                                                                                                                                           | The page that is requested. When unspecified, will load all objects unless endpoint forces pagination.                                                                                                                       |
| `per`                                                                                                                                                                                                                        | *T.nilable(::Float)*                                                                                                                                                                                                         | :heavy_minus_sign:                                                                                                                                                                                                           | Number of objects per page. For majority of endpoints will default to 25                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdCustomFieldsResponse)](../../models/operations/getv1employeesemployeeidcustomfieldsresponse.md)**



## update_onboarding_documents_config

Indicate whether to include the Form I-9 for an employee during the onboarding process.

scope: `employees:manage`

### Example Usage

```ruby
require 'gusto'


s = ::GustoEmbedded::Client.new
s.config_security(
  ::GustoEmbedded::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employees.update_onboarding_documents_config(employee_id="<id>", request_body=::GustoEmbedded::Operations::PutV1EmployeesEmployeeIdOnboardingDocumentsConfigRequestBody.new(), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee_onboarding_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PutV1EmployeesEmployeeIdOnboardingDocumentsConfigRequestBody](../../models/operations/putv1employeesemployeeidonboardingdocumentsconfigrequestbody.md)                                         | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PutV1EmployeesEmployeeIdOnboardingDocumentsConfigResponse)](../../models/operations/putv1employeesemployeeidonboardingdocumentsconfigresponse.md)**



## get_onboarding_status

# Description
Retrieves an employee's onboarding status. The data returned helps inform the required onboarding steps and respective completion status.

scope: `employees:read`

## onboarding_status

### Admin-facilitated onboarding
| onboarding_status | Description |
|:------------------|------------:|
| `admin_onboarding_incomplete` | Admin needs to complete the full employee-onboarding. |
| `onboarding_completed` | Employee has been fully onboarded and verified. |

### Employee self-onboarding
| onboarding_status | Description |
|:------------------|------------:|
| `admin_onboarding_incomplete` | Admin needs to enter basic information about the employee. |
| `self_onboarding_pending_invite` | Admin has the intention to invite the employee to self-onboard (e.g., marking a checkbox), but the system has not yet sent the invitation. |
| `self_onboarding_invited` | Employee has been sent an invitation to self-onboard. |
| `self_onboarding_invited_started` | Employee has started the self-onboarding process. |
| `self_onboarding_invited_overdue` | Employee's start date has passed, and employee has still not completed self-onboarding. |
| `self_onboarding_completed_by_employee` | Employee has completed entering in their information. The status should be updated via API to "self_onboarding_awaiting_admin_review" from here, once the Admin has started reviewing. |
| `self_onboarding_awaiting_admin_review` | Admin has started to verify the employee's information. |
| `onboarding_completed` | Employee has been fully onboarded and verified. |

## onboarding_steps

| onboarding_steps | Requirement(s) to be completed |
|:-----------------|-------------------------------:|
| `personal_details` | Add employee's first name, last name, email, date of birth, social security number |
| `compensation_details` | Associate employee to a job & compensation. |
| `add_work_address` | Add employee work address. |
| `add_home_address` | Add employee home address. |
| `federal_tax_setup` | Set up federal tax withholdings. |
| `state_tax_setup` | Set up state tax withholdings. |
| `direct_deposit_setup` | (optional) Set up employee's direct deposit. |
| `employee_form_signing` | Employee forms (e.g., W4, direct deposit authorization) are generated & signed. |
| `file_new_hire_report` | File a new hire report for this employee. |
| `admin_review` | Admin reviews & confirms employee details (only required for Employee self-onboarding) |

### Example Usage

```ruby
require 'gusto'


s = ::GustoEmbedded::Client.new
s.config_security(
  ::GustoEmbedded::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employees.get_onboarding_status(employee_id="<id>", x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee_onboarding_status.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdOnboardingStatusResponse)](../../models/operations/getv1employeesemployeeidonboardingstatusresponse.md)**



## update_onboarding_status

scope: `employees:manage`

Updates an employee's onboarding status.
Below is a list of valid onboarding status changes depending on the intended action to be performed on behalf of the employee.

| Action | current onboarding_status | new onboarding_status |
|:------------------|:------------:|----------:|
| Mark an employee as self-onboarding | `admin_onboarding_incomplete` | `self_onboarding_pending_invite` |
| Invite an employee to self-onboard | `admin_onboarding_incomplete` or `self_onboarding_pending_invite` | `self_onboarding_invited` |
| Cancel an employee's self-onboarding | `self_onboarding_invited` or `self_onboarding_pending_invite` | `admin_onboarding_incomplete` |
| Review an employee's self-onboarded info | `self_onboarding_completed_by_employee` | `self_onboarding_awaiting_admin_review` |
| Finish an employee's onboarding | `admin_onboarding_incomplete` or `self_onboarding_awaiting_admin_review` | `onboarding_completed` |

### Example Usage

```ruby
require 'gusto'


s = ::GustoEmbedded::Client.new
s.config_security(
  ::GustoEmbedded::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employees.update_onboarding_status(employee_id="<id>", request_body=::GustoEmbedded::Operations::PutV1EmployeesEmployeeIdOnboardingStatusRequestBody.new(
  onboarding_status: "<value>",
), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee_onboarding_status.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PutV1EmployeesEmployeeIdOnboardingStatusRequestBody](../../models/operations/putv1employeesemployeeidonboardingstatusrequestbody.md)                                                           | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PutV1EmployeesEmployeeIdOnboardingStatusResponse)](../../models/operations/putv1employeesemployeeidonboardingstatusresponse.md)**



## get_time_off_activities

Get employee time off activities.

scope: `employee_time_off_activities:read`

### Example Usage

```ruby
require 'gusto'


s = ::GustoEmbedded::Client.new
s.config_security(
  ::GustoEmbedded::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employees.get_time_off_activities(employee_uuid="<id>", time_off_type="<value>", x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.time_off_activity.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_uuid`                                                                                                                                                                                                              | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `time_off_type`                                                                                                                                                                                                              | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The time off type name you want to query data for. ex: 'sick' or 'vacation'                                                                                                                                                  |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetVersionEmployeesTimeOffActivitiesResponse)](../../models/operations/getversionemployeestimeoffactivitiesresponse.md)**

