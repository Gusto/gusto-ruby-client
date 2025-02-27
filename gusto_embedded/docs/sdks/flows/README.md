# Flows
(*flows*)

## Overview

### Available Operations

* [create](#create) - Create a flow

## create

Generate a link to access a pre-built workflow in Gusto white-label UI. For security, all generated flows will expire within 1 hour of inactivity or 24 hours from creation time, whichever comes first.

scope: `flows:write`

### Example Usage

```ruby
require 'gusto'


s = ::OpenApiSDK::Gusto.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)

    
res = s.flows.create(company_uuid="<id>", request_body=::OpenApiSDK::Operations::PostV1CompanyFlowsRequestBody.new(
  flow_type: "<value>",
), x_gusto_api_version=::OpenApiSDK::Shared::VersionHeader::TWO_THOUSAND_AND_TWENTY_FOUR_04_01)

if ! res.flow.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [::OpenApiSDK::Operations::PostV1CompanyFlowsRequestBody](../../models/operations/postv1companyflowsrequestbody.md)                                                                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(::OpenApiSDK::Shared::VersionHeader)](../../models/shared/versionheader.md)                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(::OpenApiSDK::Operations::PostV1CompanyFlowsResponse)](../../models/operations/postv1companyflowsresponse.md)**

