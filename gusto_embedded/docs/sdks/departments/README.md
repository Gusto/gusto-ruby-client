# Departments
(*departments*)

## Overview

### Available Operations

* [create](#create) - Create a department
* [get_all](#get_all) - Get all departments of a company
* [get](#get) - Get a department
* [update](#update) - Update a department
* [delete](#delete) - Delete a department
* [add_people](#add_people) - Add people to a department
* [remove_people](#remove_people) - Remove people from a department

## create

Create a department

scope: `departments:write`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.departments.create(company_uuid="<id>", request_body=::GustoEmbedded::Operations::PostDepartmentsRequestBody.new(), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.department.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PostDepartmentsRequestBody](../../models/operations/postdepartmentsrequestbody.md)                                                                                                             | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PostDepartmentsResponse)](../../models/operations/postdepartmentsresponse.md)**



## get_all

Get all of the departments for a given company with the employees and contractors assigned to that department.

scope: `departments:read`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.departments.get_all(company_uuid="<id>", x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.department_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetCompaniesDepartmentsResponse)](../../models/operations/getcompaniesdepartmentsresponse.md)**



## get

Get a department given the UUID

scope: `departments:read`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.departments.get(department_uuid="<id>", x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.department.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `department_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the department                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetDepartmentResponse)](../../models/operations/getdepartmentresponse.md)**



## update

Update a department

scope: `departments:write`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.departments.update(department_uuid="<id>", request_body=::GustoEmbedded::Operations::PutDepartmentsRequestBody.new(
  version: "<value>",
), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.department.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `department_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the department                                                                                                                                                                                                   |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PutDepartmentsRequestBody](../../models/operations/putdepartmentsrequestbody.md)                                                                                                               | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PutDepartmentsResponse)](../../models/operations/putdepartmentsresponse.md)**



## delete

Delete a department. You cannot delete a department until all employees and contractors have been removed.

scope: `departments:write`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.departments.delete(department_uuid="<id>", x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `department_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the department                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::DeleteDepartmentResponse)](../../models/operations/deletedepartmentresponse.md)**



## add_people

Add employees and contractors to a department

scope: `departments:write`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.departments.add_people(department_uuid="<id>", request_body=::GustoEmbedded::Operations::PutAddPeopleToDepartmentRequestBody.new(), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.department.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `department_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the department                                                                                                                                                                                                   |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PutAddPeopleToDepartmentRequestBody](../../models/operations/putaddpeopletodepartmentrequestbody.md)                                                                                           | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PutAddPeopleToDepartmentResponse)](../../models/operations/putaddpeopletodepartmentresponse.md)**



## remove_people

Remove employees and contractors from a department

scope: `departments:write`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.departments.remove_people(department_uuid="<id>", request_body=::GustoEmbedded::Operations::PutRemovePeopleFromDepartmentRequestBody.new(), x_gusto_api_version=::GustoEmbedded::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.department.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `department_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the department                                                                                                                                                                                                   |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PutRemovePeopleFromDepartmentRequestBody](../../models/operations/putremovepeoplefromdepartmentrequestbody.md)                                                                                 | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PutRemovePeopleFromDepartmentResponse)](../../models/operations/putremovepeoplefromdepartmentresponse.md)**

