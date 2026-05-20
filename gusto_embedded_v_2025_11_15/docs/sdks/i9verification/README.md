# I9Verification

## Overview

### Available Operations

* [get_authorization](#get_authorization) - Get an employee's I-9 authorization
* [update](#update) - Create or update an employee's I-9 authorization
* [get_document_options](#get_document_options) - Get an employee's I-9 verification document options
* [get_documents](#get_documents) - Get an employee's I-9 verification documents
* [create_documents](#create_documents) - Create an employee's I-9 authorization verification documents
* [delete_document](#delete_document) - Delete an employee's I-9 verification document
* [employer_sign](#employer_sign) - Employer sign an employee's Form I-9

## get_authorization

An employee's I-9 authorization stores information about an employee's authorization status and I-9 signatures, information required to fill out the Form I-9 for employment eligibility verification.

**NOTE:** The `form_uuid` in responses from this endpoint can be used to retrieve the PDF version of the I-9. See the "get employee form PDF" request for more details.

### Related guides
- [I-9 employment verification](doc:i-9-employment-verification)

scope: `i9_authorizations:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employees-employee_id-i9_authorization" method="get" path="/v1/employees/{employee_id}/i9_authorization" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.i9_verification.get_authorization(employee_id: '<id>', x_gusto_api_version: Models::Operations::GetV1EmployeesEmployeeIdI9AuthorizationHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.i9_authorization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1EmployeesEmployeeIdI9AuthorizationHeaderXGustoAPIVersion)](../../models/operations/getv1employeesemployeeidi9authorizationheaderxgustoapiversion.md)                                     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1EmployeesEmployeeIdI9AuthorizationResponse)](../../models/operations/getv1employeesemployeeidi9authorizationresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## update

An employee's I-9 authorization stores information about an employee's authorization status, as well as signatures and other information required to complete the Form I-9 for employment eligibility verification.

If the version is supplied and the employee I-9 authorization exists, this endpoint acts as an update. Otherwise, it will create an employee I-9 authorization.

Validations on this endpoint are conditional:
  * `document_type` may be required, depending on `authorization_status`.
  * Valid formats for `document_number` vary, depending on `document_type`.
  * `country` is only allowed with `document_type: 'foreign_passport'`.
  * `expiration_date` is only allowed with `authorization_status: 'alien'`.

> ℹ️ Unneeded information is automatically removed during updates.
>
> If an update causes some formerly-required fields to be unneeded, the now-unneeded data will be removed automatically.
>
> **Example:** Updating `authorization_status` from `alien` to `citizen` will cause any data in `document_type`, `document_number`, `country`, and `expiration_date` to be removed, since these fields are unused for `authorization_status:'citizen'`.

Detailed instructions for completing Form I-9 can be found at https://www.uscis.gov/sites/default/files/document/forms/i-9instr.pdf

### Related guides
- [I-9 employment verification](doc:i-9-employment-verification)

scope: `i9_authorizations:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-employees-employee_id-i9_authorization" method="put" path="/v1/employees/{employee_id}/i9_authorization" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.i9_verification.update(employee_id: '<id>', body: Models::Shared::I9AuthorizationRequestBody.new(
  authorization_status: Models::Shared::I9AuthorizationRequestBodyAuthorizationStatus::ALIEN
), x_gusto_api_version: Models::Operations::PutV1EmployeesEmployeeIdI9AuthorizationHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.i9_authorization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `body`                                                                                                                                                                                                                       | [Models::Shared::I9AuthorizationRequestBody](../../models/shared/i9authorizationrequestbody.md)                                                                                                                              | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1EmployeesEmployeeIdI9AuthorizationHeaderXGustoAPIVersion)](../../models/operations/putv1employeesemployeeidi9authorizationheaderxgustoapiversion.md)                                     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1EmployeesEmployeeIdI9AuthorizationResponse)](../../models/operations/putv1employeesemployeeidi9authorizationresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_document_options

An employee's I-9 verification documents are the documents an employee has provided the employer to verify their identity and authorization to work in the United States. This endpoint returns the possible document options based on the employee's authorization status. These options can then be used to create the I-9 verification documents.

### Related guides
- [I-9 employment verification](doc:i-9-employment-verification)

scope: `i9_authorizations:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employees-employee_id-i9_authorization-document_options" method="get" path="/v1/employees/{employee_id}/i9_authorization/document_options" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.i9_verification.get_document_options(employee_id: '<id>', x_gusto_api_version: Models::Operations::GetV1EmployeesEmployeeIdI9AuthorizationDocumentOptionsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.i9_authorization_document_options.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1EmployeesEmployeeIdI9AuthorizationDocumentOptionsHeaderXGustoAPIVersion)](../../models/operations/getv1employeesemployeeidi9authorizationdocumentoptionsheaderxgustoapiversion.md)       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1EmployeesEmployeeIdI9AuthorizationDocumentOptionsResponse)](../../models/operations/getv1employeesemployeeidi9authorizationdocumentoptionsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## get_documents

An employee's I-9 verification documents are the documents an employee has provided the employer to verify their identity and authorization to work in the United States.

### Related guides
- [I-9 employment verification](doc:i-9-employment-verification)

scope: `i9_authorizations:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-employees-employee_id-i9_authorization-documents" method="get" path="/v1/employees/{employee_id}/i9_authorization/documents" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.i9_verification.get_documents(employee_id: '<id>', x_gusto_api_version: Models::Operations::GetV1EmployeesEmployeeIdI9AuthorizationDocumentsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.i9_authorization_documents.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1EmployeesEmployeeIdI9AuthorizationDocumentsHeaderXGustoAPIVersion)](../../models/operations/getv1employeesemployeeidi9authorizationdocumentsheaderxgustoapiversion.md)                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1EmployeesEmployeeIdI9AuthorizationDocumentsResponse)](../../models/operations/getv1employeesemployeeidi9authorizationdocumentsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## create_documents

An employee's I-9 verification documents are the documents an employee has provided the employer to verify their identity and authorization to work in the United States.

Use the [document options endpoint](ref:get-v1-employees-employee_id-i9_authorization-document_options) to get the possible document types and titles, which can vary depending on the employee's authorization status.

> 🚧 Every request must contain the complete list of documents for the Employee.
>
> Every request to this endpoint removes any previous verification document records for the employee.

### Related guides
- [I-9 employment verification](doc:i-9-employment-verification)

scope: `i9_authorizations:manage`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-employees-employee_id-i9_authorization-documents" method="put" path="/v1/employees/{employee_id}/i9_authorization/documents" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.i9_verification.create_documents(employee_id: '<id>', body: Models::Shared::I9AuthorizationDocumentsRequestBody.new(
  documents: []
), x_gusto_api_version: Models::Operations::PutV1EmployeesEmployeeIdI9AuthorizationDocumentsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.i9_authorization_documents.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `body`                                                                                                                                                                                                                       | [Models::Shared::I9AuthorizationDocumentsRequestBody](../../models/shared/i9authorizationdocumentsrequestbody.md)                                                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1EmployeesEmployeeIdI9AuthorizationDocumentsHeaderXGustoAPIVersion)](../../models/operations/putv1employeesemployeeidi9authorizationdocumentsheaderxgustoapiversion.md)                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1EmployeesEmployeeIdI9AuthorizationDocumentsResponse)](../../models/operations/putv1employeesemployeeidi9authorizationdocumentsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## delete_document

An employee's I-9 verification documents are the documents an employee has provided the employer to verify their identity and authorization to work in the United States. This endpoint deletes a specific verification document.

### Related guides
- [I-9 employment verification](doc:i-9-employment-verification)

scope: `i9_authorizations:manage`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="delete-v1-employees-employee_id-i9_authorization-documents-document_id" method="delete" path="/v1/employees/{employee_id}/i9_authorization/documents/{document_id}" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.i9_verification.delete_document(employee_id: '<id>', document_id: '<id>', x_gusto_api_version: Models::Operations::DeleteV1EmployeesEmployeeIdI9AuthorizationDocumentsDocumentIdHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                         | Type                                                                                                                                                                                                                              | Required                                                                                                                                                                                                                          | Description                                                                                                                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                     | *::String*                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                | The UUID of the employee                                                                                                                                                                                                          |
| `document_id`                                                                                                                                                                                                                     | *::String*                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                | The UUID of the document                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                             | [T.nilable(Models::Operations::DeleteV1EmployeesEmployeeIdI9AuthorizationDocumentsDocumentIdHeaderXGustoAPIVersion)](../../models/operations/deletev1employeesemployeeidi9authorizationdocumentsdocumentidheaderxgusto_dd1388.md) | :heavy_minus_sign:                                                                                                                                                                                                                | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.      |

### Response

**[T.nilable(Models::Operations::DeleteV1EmployeesEmployeeIdI9AuthorizationDocumentsDocumentIdResponse)](../../models/operations/deletev1employeesemployeeidi9authorizationdocumentsdocumentidresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## employer_sign

Sign an employee's Form I-9 as an employer. Once the form is signed, the employee's I-9 authorization is considered complete and cannot be modified.

### Prerequisites
Before calling this endpoint:
1. The employee must have a completed [I-9 authorization](ref:put-v1-employees-employee_id-i9_authorization)
2. The employee must have signed the Form I-9
3. [I-9 verification documents](ref:put-v1-employees-employee_id-i9_authorization-documents) must be submitted

### Related guides
- [I-9 employment verification](doc:i-9-employment-verification)

scope: `i9_authorizations:manage`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-employees-employee_id-i9_authorization-employer_sign" method="put" path="/v1/employees/{employee_id}/i9_authorization/employer_sign" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.i9_verification.employer_sign(employee_id: '<id>', body: Models::Shared::I9AuthorizationEmployerSignRequestBody.new(
  signature_text: '<value>',
  signer_title: '<value>',
  agree: false
), x_gusto_api_version: Models::Operations::PutV1EmployeesEmployeeIdI9AuthorizationEmployerSignHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.i9_authorization.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the employee                                                                                                                                                                                                     |
| `body`                                                                                                                                                                                                                       | [Models::Shared::I9AuthorizationEmployerSignRequestBody](../../models/shared/i9authorizationemployersignrequestbody.md)                                                                                                      | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1EmployeesEmployeeIdI9AuthorizationEmployerSignHeaderXGustoAPIVersion)](../../models/operations/putv1employeesemployeeidi9authorizationemployersignheaderxgustoapiversion.md)             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `x_gusto_client_ip`                                                                                                                                                                                                          | *T.nilable(::String)*                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                           | Optional header to supply the IP address. This can be used to supply the IP address for signature endpoints instead of the signed_by_ip_address parameter.                                                                   |

### Response

**[T.nilable(Models::Operations::PutV1EmployeesEmployeeIdI9AuthorizationEmployerSignResponse)](../../models/operations/putv1employeesemployeeidi9authorizationemployersignresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |