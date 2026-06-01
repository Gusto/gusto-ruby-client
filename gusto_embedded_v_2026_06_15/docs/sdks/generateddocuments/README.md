# GeneratedDocuments

## Overview

### Available Operations

* [get](#get) - Get a generated document

## get

Get a document given the request_uuid. The response will include the generation request's status and urls to the document. A list of urls is returned as certain document types require several urls.

scope: `generated_documents:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-generated_documents-document_type-request_uuid" method="get" path="/v1/generated_documents/{document_type}/{request_uuid}" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.generated_documents.get(document_type: Models::Operations::DocumentType::PRINTABLE_PAYROLL_CHECKS, request_uuid: '<id>', x_gusto_api_version: Models::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.generated_document.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `document_type`                                                                                                                                                                                                              | [Models::Operations::DocumentType](../../models/operations/documenttype.md)                                                                                                                                                  | :heavy_check_mark:                                                                                                                                                                                                           | The type of document being generated                                                                                                                                                                                         |
| `request_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the request to generate a document. Generate document endpoints return request_uuids to be used with the GET generated document endpoint.                                                                        |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1GeneratedDocumentsDocumentTypeRequestUuidResponse)](../../models/operations/getv1generateddocumentsdocumenttyperequestuuidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |