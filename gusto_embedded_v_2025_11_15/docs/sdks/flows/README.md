# Flows

## Overview

### Available Operations

* [create](#create) - Create a flow

## create

Generate a link to access a pre-built workflow in Gusto white-label UI. For security, all generated flows will expire within 1 hour of inactivity or 24 hours from creation time, whichever comes first.

You can see a list of all possible flow types in our [Flow Types](https://docs.gusto.com/embedded-payroll/docs/flow-types) guide.

You can also mix and match flow_types in the same category to create custom flows suitable for your needs.

For instance, to create a custom onboarding flow that only includes `add_addresses`, `add_employees`, and `sign_all_forms` steps, simply stitch those flow_types together into a comma delimited string:

```json
{
  "flow_type": "add_addresses,add_employees,sign_all_forms"
}
```

Please be mindful of data dependencies in each step to achieve the best user experience.

For more information and in-depth guides review the [Getting Started](https://docs.gusto.com/embedded-payroll/docs/flows-getting-started) guide for flows.

scope: `flows:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-company-flows" method="post" path="/v1/companies/{company_uuid}/flows" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.flows.create(company_uuid: '<id>', body: Models::Shared::CreateFlowRequest.new(
  flow_type: 'company_onboarding'
), x_gusto_api_version: Models::Operations::PostV1CompanyFlowsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.flow.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `body`                                                                                                                                                                                                                       | [Models::Shared::CreateFlowRequest](../../models/shared/createflowrequest.md)                                                                                                                                                | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1CompanyFlowsHeaderXGustoAPIVersion)](../../models/operations/postv1companyflowsheaderxgustoapiversion.md)                                                                               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompanyFlowsResponse)](../../models/operations/postv1companyflowsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |