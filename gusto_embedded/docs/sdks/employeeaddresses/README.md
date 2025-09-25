# EmployeeAddresses
(*employee_addresses*)

## Overview

### Available Operations

* [get](#get) - Get an employee's home addresses
* [create](#create) - Create an employee's home address
* [retrieve_home_address](#retrieve_home_address) - Get an employee's home address
* [update](#update) - Update an employee's home address
* [delete](#delete) - Delete an employee's home address
* [get_work_addresses](#get_work_addresses) - Get an employee's work addresses
* [create_work_address](#create_work_address) - Create an employee work address
* [retrieve_work_address](#retrieve_work_address) - Get an employee work address
* [update_work_address](#update_work_address) - Update an employee work address
* [delete_work_address](#delete_work_address) - Delete an employee's work address

## get

The home address of an employee is used to determine certain tax information about them. Addresses are geocoded on create and update to ensure validity.

Supports home address effective dating and courtesy withholding.

scope: `employees:read`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.employee_addresses.get(employee_id="<id>", x_gusto_api_version=::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdHomeAddressesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee_address_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdHomeAddressesHeaderXGustoAPIVersion)](../../models/operations/getv1employeesemployeeidhomeaddressesheaderxgustoapiversion.md)                                | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdHomeAddressesResponse)](../../models/operations/getv1employeesemployeeidhomeaddressesresponse.md)**



## create

The home address of an employee is used to determine certain tax information about them. Addresses are geocoded on create and update to ensure validity.

Supports home address effective dating and courtesy withholding.

scope: `employees:write`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.employee_addresses.create(employee_id="<id>", request_body=::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdHomeAddressesRequestBody.new(
  street_1: "300 3rd Street",
  city: "San Francisco",
  state: "CA",
  zip: "94107",
  effective_date: Date.parse("2022-01-31"),
), x_gusto_api_version=::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdHomeAddressesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee_address.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdHomeAddressesRequestBody](../../models/operations/postv1employeesemployeeidhomeaddressesrequestbody.md)                                                               | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdHomeAddressesHeaderXGustoAPIVersion)](../../models/operations/postv1employeesemployeeidhomeaddressesheaderxgustoapiversion.md)                              | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdHomeAddressesResponse)](../../models/operations/postv1employeesemployeeidhomeaddressesresponse.md)**



## retrieve_home_address

The home address of an employee is used to determine certain tax information about them. Addresses are geocoded on create and update to ensure validity.

Supports home address effective dating and courtesy withholding.

scope: `employees:read`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.employee_addresses.retrieve_home_address(home_address_uuid="<id>", x_gusto_api_version=::GustoEmbedded::Operations::GetV1HomeAddressesHomeAddressUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee_address.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `home_address_uuid`                                                                                                                                                                                                          | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the home address                                                                                                                                                                                                 |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::GetV1HomeAddressesHomeAddressUuidHeaderXGustoAPIVersion)](../../models/operations/getv1homeaddresseshomeaddressuuidheaderxgustoapiversion.md)                                        | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1HomeAddressesHomeAddressUuidResponse)](../../models/operations/getv1homeaddresseshomeaddressuuidresponse.md)**



## update

The home address of an employee is used to determine certain tax information about them. Addresses are geocoded on create and update to ensure validity.

Supports home address effective dating and courtesy withholding.

scope: `employees:write`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.employee_addresses.update(home_address_uuid="<id>", request_body=::GustoEmbedded::Operations::PutV1HomeAddressesHomeAddressUuidRequestBody.new(
  version: "56d00c178bc7393b2a206ed6a86afcb4",
), x_gusto_api_version=::GustoEmbedded::Operations::PutV1HomeAddressesHomeAddressUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee_address.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `home_address_uuid`                                                                                                                                                                                                          | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the home address                                                                                                                                                                                                 |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PutV1HomeAddressesHomeAddressUuidRequestBody](../../models/operations/putv1homeaddresseshomeaddressuuidrequestbody.md)                                                                         | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::PutV1HomeAddressesHomeAddressUuidHeaderXGustoAPIVersion)](../../models/operations/putv1homeaddresseshomeaddressuuidheaderxgustoapiversion.md)                                        | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PutV1HomeAddressesHomeAddressUuidResponse)](../../models/operations/putv1homeaddresseshomeaddressuuidresponse.md)**



## delete

Used for deleting an employee's home address. Cannot delete the employee's active home address.

scope: `employees:write`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.employee_addresses.delete(home_address_uuid="<id>", x_gusto_api_version=::GustoEmbedded::Operations::DeleteV1HomeAddressesHomeAddressUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `home_address_uuid`                                                                                                                                                                                                          | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the home address                                                                                                                                                                                                 |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::DeleteV1HomeAddressesHomeAddressUuidHeaderXGustoAPIVersion)](../../models/operations/deletev1homeaddresseshomeaddressuuidheaderxgustoapiversion.md)                                  | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::DeleteV1HomeAddressesHomeAddressUuidResponse)](../../models/operations/deletev1homeaddresseshomeaddressuuidresponse.md)**



## get_work_addresses

Returns a list of an employee's work addresses. Each address includes its effective
date and a boolean signifying if it is the currently active work address.

scope: `employees:read`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.employee_addresses.get_work_addresses(employee_id="<id>", x_gusto_api_version=::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdWorkAddressesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee_work_addresses_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdWorkAddressesHeaderXGustoAPIVersion)](../../models/operations/getv1employeesemployeeidworkaddressesheaderxgustoapiversion.md)                                | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1EmployeesEmployeeIdWorkAddressesResponse)](../../models/operations/getv1employeesemployeeidworkaddressesresponse.md)**



## create_work_address

The work address of an employee describes when an employee began working at an associated company location.

scope: `employees:manage`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.employee_addresses.create_work_address(employee_id="<id>", request_body=::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdWorkAddressesRequestBody.new(
  location_uuid: "6a119be7-b4b0-4e27-aaa0-89d5f2524635",
  effective_date: Date.parse("2023-05-15"),
), x_gusto_api_version=::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdWorkAddressesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee_work_address.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdWorkAddressesRequestBody](../../models/operations/postv1employeesemployeeidworkaddressesrequestbody.md)                                                               | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdWorkAddressesHeaderXGustoAPIVersion)](../../models/operations/postv1employeesemployeeidworkaddressesheaderxgustoapiversion.md)                              | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PostV1EmployeesEmployeeIdWorkAddressesResponse)](../../models/operations/postv1employeesemployeeidworkaddressesresponse.md)**



## retrieve_work_address

The work address of an employee is used for payroll tax purposes.

scope: `employees:read`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.employee_addresses.retrieve_work_address(work_address_uuid="<id>", x_gusto_api_version=::GustoEmbedded::Operations::GetV1WorkAddressesWorkAddressUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee_work_address.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `work_address_uuid`                                                                                                                                                                                                          | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the work address                                                                                                                                                                                                 |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::GetV1WorkAddressesWorkAddressUuidHeaderXGustoAPIVersion)](../../models/operations/getv1workaddressesworkaddressuuidheaderxgustoapiversion.md)                                        | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetV1WorkAddressesWorkAddressUuidResponse)](../../models/operations/getv1workaddressesworkaddressuuidresponse.md)**



## update_work_address

The work address of an employee is used for payroll tax purposes.

scope: `employees:manage`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.employee_addresses.update_work_address(work_address_uuid="<id>", request_body=::GustoEmbedded::Operations::PutV1WorkAddressesWorkAddressUuidRequestBody.new(
  version: "56d00c178bc7393b2a206ed6a86afcb4",
  location_uuid: "6a119be7-b4b0-4e27-aaa0-89d5f2524635",
  effective_date: Date.parse("2023-05-15"),
), x_gusto_api_version=::GustoEmbedded::Operations::PutV1WorkAddressesWorkAddressUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.employee_work_address.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `work_address_uuid`                                                                                                                                                                                                          | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the work address                                                                                                                                                                                                 |
| `request_body`                                                                                                                                                                                                               | [::GustoEmbedded::Operations::PutV1WorkAddressesWorkAddressUuidRequestBody](../../models/operations/putv1workaddressesworkaddressuuidrequestbody.md)                                                                         | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::PutV1WorkAddressesWorkAddressUuidHeaderXGustoAPIVersion)](../../models/operations/putv1workaddressesworkaddressuuidheaderxgustoapiversion.md)                                        | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::PutV1WorkAddressesWorkAddressUuidResponse)](../../models/operations/putv1workaddressesworkaddressuuidresponse.md)**



## delete_work_address

Used for deleting an employee's work address. Cannot delete the employee's active work address.

scope: `employees:manage`


### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

res = s.employee_addresses.delete_work_address(work_address_uuid="<id>", x_gusto_api_version=::GustoEmbedded::Operations::DeleteV1WorkAddressesWorkAddressUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `work_address_uuid`                                                                                                                                                                                                          | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the work address                                                                                                                                                                                                 |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::GustoEmbedded::Operations::DeleteV1WorkAddressesWorkAddressUuidHeaderXGustoAPIVersion)](../../models/operations/deletev1workaddressesworkaddressuuidheaderxgustoapiversion.md)                                  | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::GustoEmbedded::Operations::DeleteV1WorkAddressesWorkAddressUuidResponse)](../../models/operations/deletev1workaddressesworkaddressuuidresponse.md)**

