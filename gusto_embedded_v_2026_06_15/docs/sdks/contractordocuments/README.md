# ContractorDocuments

## Overview

### Available Operations

* [get_all](#get_all) - Get all contractor documents
* [get](#get) - Get a contractor document
* [get_pdf](#get_pdf) - Get the contractor document pdf
* [sign](#sign) - Sign a contractor document

## get_all

Get a list of all contractor's documents

scope: `contractor_documents:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-contractor-documents" method="get" path="/v1/contractors/{contractor_uuid}/documents" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractor_documents.get_all(contractor_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1ContractorDocumentsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.documents.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `contractor_uuid`                                                                                                                                                                                                            | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the contractor                                                                                                                                                                                                   |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1ContractorDocumentsHeaderXGustoAPIVersion)](../../models/operations/getv1contractordocumentsheaderxgustoapiversion.md)                                                                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1ContractorDocumentsResponse)](../../models/operations/getv1contractordocumentsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## get

Get a contractor document.

scope: `contractor_documents:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-contractor-document" method="get" path="/v1/documents/{document_uuid}" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractor_documents.get(document_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1ContractorDocumentHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `document_uuid`                                                                                                                                                                                                              | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the document                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1ContractorDocumentHeaderXGustoAPIVersion)](../../models/operations/getv1contractordocumentheaderxgustoapiversion.md)                                                                     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1ContractorDocumentResponse)](../../models/operations/getv1contractordocumentresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_pdf

Get the contractor document pdf.

scope: `contractor_documents:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-contractor-document-pdf" method="get" path="/v1/documents/{document_uuid}/pdf" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractor_documents.get_pdf(document_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1ContractorDocumentPdfHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.document_pdf.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `document_uuid`                                                                                                                                                                                                              | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the document                                                                                                                                                                                                     |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1ContractorDocumentPdfHeaderXGustoAPIVersion)](../../models/operations/getv1contractordocumentpdfheaderxgustoapiversion.md)                                                               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1ContractorDocumentPdfResponse)](../../models/operations/getv1contractordocumentpdfresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## sign

Sign a contractor document.

scope: `contractor_documents:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-contractor-document-sign" method="put" path="/v1/documents/{document_uuid}/sign" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.contractor_documents.sign(document_uuid: '<id>', request_body: Models::Operations::PutV1ContractorDocumentSignRequestBody.new(
  fields_: [],
  agree: false
), x_gusto_api_version: Models::Operations::PutV1ContractorDocumentSignHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.document_signed.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `document_uuid`                                                                                                                                                                                                              | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the document                                                                                                                                                                                                     |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PutV1ContractorDocumentSignRequestBody](../../models/operations/putv1contractordocumentsignrequestbody.md)                                                                                              | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1ContractorDocumentSignHeaderXGustoAPIVersion)](../../models/operations/putv1contractordocumentsignheaderxgustoapiversion.md)                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |
| `x_gusto_client_ip`                                                                                                                                                                                                          | *T.nilable(::String)*                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                           | Optional header to supply the IP address. This can be used to supply the IP address for signature endpoints instead of the signed_by_ip_address parameter.                                                                   |

### Response

**[T.nilable(Models::Operations::PutV1ContractorDocumentSignResponse)](../../models/operations/putv1contractordocumentsignresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |