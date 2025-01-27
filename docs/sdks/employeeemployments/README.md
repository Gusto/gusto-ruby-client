# EmployeeEmployments
(*employee_employments*)

## Overview

### Available Operations

* [create_termination](#create_termination) - Create an employee termination
* [list_terminations](#list_terminations) - Get terminations for an employee
* [delete_termination](#delete_termination) - Delete an employee termination
* [update_termination](#update_termination) - Update an employee termination
* [rehire](#rehire) - Create an employee rehire
* [update_rehire](#update_rehire) - Update an employee rehire
* [get_rehire](#get_rehire) - Get an employee rehire
* [delete_rehire](#delete_rehire) - Delete an employee rehire

## create_termination

Terminations are created whenever an employee is scheduled to leave the company. The only things required are an effective date (their last day of work) and whether they should receive their wages in a one-off termination payroll or with the rest of the company.

Note that some states require employees to receive their final wages within 24 hours (unless they consent otherwise,) in which case running a one-off payroll may be the only option.

scope: `employments:write`

### Example Usage

```ruby
require 'gusto'


s = ::OpenApiSDK::Gusto.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employee_employments.create_termination(employee_id="<id>", x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01, request_body=::OpenApiSDK::Operations::PostV1EmployeesEmployeeIdTerminationsRequestBody.new(
  effective_date: "<value>",
))

if ! res.termination.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::OpenApiSDK::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `request_body`                                                                                                                                                                                                               | [T.nilable(::OpenApiSDK::Operations::PostV1EmployeesEmployeeIdTerminationsRequestBody)](../../models/operations/postv1employeesemployeeidterminationsrequestbody.md)                                                         | :heavy_minus_sign:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |

### Response

**[T.nilable(::OpenApiSDK::Operations::PostV1EmployeesEmployeeIdTerminationsResponse)](../../models/operations/postv1employeesemployeeidterminationsresponse.md)**



## list_terminations

Terminations are created whenever an employee is scheduled to leave the company. The only things required are an effective date (their last day of work) and whether they should receive their wages in a one-off termination payroll or with the rest of the company.

Note that some states require employees to receive their final wages within 24 hours (unless they consent otherwise,) in which case running a one-off payroll may be the only option.

scope: `employments:read`

### Example Usage

```ruby
require 'gusto'


s = ::OpenApiSDK::Gusto.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employee_employments.list_terminations(employee_id="<id>", x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.termination_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::OpenApiSDK::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdTerminationsResponse)](../../models/operations/getv1employeesemployeeidterminationsresponse.md)**



## delete_termination

Delete an employee termination.

scope: `employments:write`

### Example Usage

```ruby
require 'gusto'


s = ::OpenApiSDK::Gusto.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employee_employments.delete_termination(employee_id="<id>", x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::OpenApiSDK::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::OpenApiSDK::Operations::DeleteV1EmployeesEmployeeIdTerminationsResponse)](../../models/operations/deletev1employeesemployeeidterminationsresponse.md)**



## update_termination

Terminations are created whenever an employee is scheduled to leave the company. The only things required are an effective date (their last day of work) and whether they should receive their wages in a one-off termination payroll or with the rest of the company.

Note that some states require employees to receive their final wages within 24 hours (unless they consent otherwise,) in which case running a one-off payroll may be the only option.

scope: `employments:write`

### Example Usage

```ruby
require 'gusto'


s = ::OpenApiSDK::Gusto.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employee_employments.update_termination(employee_id="<id>", x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01, request_body=::OpenApiSDK::Operations::PutV1TerminationsEmployeeIdRequestBody.new(
  version: "<value>",
  effective_date: "<value>",
))

if ! res.termination.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::OpenApiSDK::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `request_body`                                                                                                                                                                                                               | [T.nilable(::OpenApiSDK::Operations::PutV1TerminationsEmployeeIdRequestBody)](../../models/operations/putv1terminationsemployeeidrequestbody.md)                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |

### Response

**[T.nilable(::OpenApiSDK::Operations::PutV1TerminationsEmployeeIdResponse)](../../models/operations/putv1terminationsemployeeidresponse.md)**



## rehire

Rehire is created whenever an employee is scheduled to return to the company.

scope: `employments:write`

### Example Usage

```ruby
require 'gusto'


s = ::OpenApiSDK::Gusto.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employee_employments.rehire(employee_id="<id>", x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01, rehire_body=::OpenApiSDK::Shared::RehireBody.new(
  effective_date: "<value>",
  file_new_hire_report: false,
  work_location_uuid: "<id>",
))

if ! res.rehire.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::OpenApiSDK::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `rehire_body`                                                                                                                                                                                                                | [T.nilable(::OpenApiSDK::Shared::RehireBody)](../../models/shared/rehirebody.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |

### Response

**[T.nilable(::OpenApiSDK::Operations::PostV1EmployeesEmployeeIdRehireResponse)](../../models/operations/postv1employeesemployeeidrehireresponse.md)**



## update_rehire

Update an employee's rehire.

scope: `employments:write`

### Example Usage

```ruby
require 'gusto'


s = ::OpenApiSDK::Gusto.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employee_employments.update_rehire(employee_id="<id>", x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01, request_body=::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdRehireRequestBody.new(
  version: "<value>",
  effective_date: "<value>",
  file_new_hire_report: false,
  work_location_uuid: "<id>",
))

if ! res.rehire.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::OpenApiSDK::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `request_body`                                                                                                                                                                                                               | [T.nilable(::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdRehireRequestBody)](../../models/operations/putv1employeesemployeeidrehirerequestbody.md)                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |

### Response

**[T.nilable(::OpenApiSDK::Operations::PutV1EmployeesEmployeeIdRehireResponse)](../../models/operations/putv1employeesemployeeidrehireresponse.md)**



## get_rehire

Retrieve an employee's rehire, which contains information on when the employee returns to work.

scope: `employments:read`

### Example Usage

```ruby
require 'gusto'


s = ::OpenApiSDK::Gusto.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employee_employments.get_rehire(employee_id="<id>", x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.rehire.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::OpenApiSDK::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetV1EmployeesEmployeeIdRehireResponse)](../../models/operations/getv1employeesemployeeidrehireresponse.md)**



## delete_rehire

Delete an employee rehire. An employee rehire cannot be deleted if it's active (past effective date).

scope: `employments:write`

### Example Usage

```ruby
require 'gusto'


s = ::OpenApiSDK::Gusto.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.employee_employments.delete_rehire(employee_id="<id>", x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::OpenApiSDK::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::OpenApiSDK::Operations::DeleteV1EmployeesEmployeeIdRehireResponse)](../../models/operations/deletev1employeesemployeeidrehireresponse.md)**

