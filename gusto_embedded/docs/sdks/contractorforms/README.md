# ContractorForms
(*contractor_forms*)

## Overview

### Available Operations

* [list](#list) - Get all contractor forms
* [get](#get) - Get a contractor form
* [get_pdf](#get_pdf) - Get the contractor form pdf
* [generate1099](#generate1099) - Generate a 1099 form [DEMO]

## list

Get a list of all contractor's forms

scope: `contractor_forms:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-contractor-forms" method="get" path="/v1/contractors/{contractor_uuid}/forms" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.contractor_forms.list(contractor_uuid: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.form_1099s.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1ContractorFormsResponse)](../../models/operations/getv1contractorformsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get

Get a contractor form

scope: `contractor_forms:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-contractor-form" method="get" path="/v1/contractors/{contractor_uuid}/forms/{form_id}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.contractor_forms.get(contractor_uuid: '<id>', form_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.form_1099.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `form_id`                                                                                                                                                                                                                    | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the form                                                                                                                                                                                                         |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1ContractorFormResponse)](../../models/operations/getv1contractorformresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_pdf

Get the link to the form PDF

scope: `contractor_forms:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-contractor-form-pdf" method="get" path="/v1/contractors/{contractor_uuid}/forms/{form_id}/pdf" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.contractor_forms.get_pdf(contractor_uuid: '<id>', form_id: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.form_pdf.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `form_id`                                                                                                                                                                                                                    | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the form                                                                                                                                                                                                         |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1ContractorFormPdfResponse)](../../models/operations/getv1contractorformpdfresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## generate1099

> 🚧 Demo action
>
> This action is only available in the Demo environment

Generates a 1099 document for testing purposes.

scope: `contractors:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-sandbox-generate_1099" method="post" path="/v1/sandbox/generate_1099" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
      security: Models::Shared::Security.new(
        company_access_auth: '<YOUR_BEARER_TOKEN_HERE>',
      ),
    )

res = s.contractor_forms.generate1099(request_body: Models::Operations::PostV1SandboxGenerate1099RequestBody.new(
  contractor_id: '<id>',
), x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.form_1099.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostV1SandboxGenerate1099RequestBody](../../models/operations/postv1sandboxgenerate1099requestbody.md)                                                                                                  | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1SandboxGenerate1099Response)](../../models/operations/postv1sandboxgenerate1099response.md)**

### Errors

| Error Type                                     | Status Code                                    | Content Type                                   |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| Models::Errors::UnprocessableEntityErrorObject | 422                                            | application/json                               |
| Errors::APIError                               | 4XX, 5XX                                       | \*/\*                                          |