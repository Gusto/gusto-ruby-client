# CustomFields
(*custom_fields*)

## Overview

### Available Operations

* [list](#list) - Get an employee's custom fields

## list

Returns a list of the employee's custom fields.

scope: `employees:read`

### Example Usage

```ruby
require 'gusto'


s = ::OpenApiSDK::Gusto.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.custom_fields.list(employee_id="<id>", page=7685.78, per=5472.72, x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

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
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::OpenApiSDK::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdCustomFieldsResponse)](../../models/operations/getv1employeesemployeeidcustomfieldsresponse.md)**

