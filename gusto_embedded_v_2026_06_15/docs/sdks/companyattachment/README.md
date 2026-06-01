# CompanyAttachment

## Overview

### Available Operations

* [get_download_url](#get_download_url) - Get a temporary url to download the Company Attachment file

## get_download_url

Retrieve a temporary url to download an attachment file uploaded by the company.

### Related guides
- [Manage company attachments](doc:manage-company-attachments)

scope: `company_attachments:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-companies-attachment-url" method="get" path="/v1/companies/{company_id}/attachments/{company_attachment_uuid}/download_url" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.company_attachment.get_download_url(company_id: '<id>', company_attachment_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1CompaniesAttachmentUrlHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.company_attachment_download_url.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `company_attachment_uuid`                                                                                                                                                                                                    | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company attachment                                                                                                                                                                                           |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompaniesAttachmentUrlHeaderXGustoAPIVersion)](../../models/operations/getv1companiesattachmenturlheaderxgustoapiversion.md)                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompaniesAttachmentUrlResponse)](../../models/operations/getv1companiesattachmenturlresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |