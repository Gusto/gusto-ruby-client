# PeopleBatches

## Overview

### Available Operations

* [post_v1_companies_company_id_people_batches](#post_v1_companies_company_id_people_batches) - Create a people batch
* [get_v1_people_batches_people_batch_uuid](#get_v1_people_batches_people_batch_uuid) - Get a people batch

## post_v1_companies_company_id_people_batches

Creates a batch for bulk employee creation.

The batch is processed asynchronously. Use the returned batch UUID to poll for status and results.

scope: `people_batches:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-companies-company_id-people_batches" method="post" path="/v1/companies/{company_id}/people_batches" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.people_batches.post_v1_companies_company_id_people_batches(company_id: '<id>', request_body: Models::Operations::PostV1CompaniesCompanyIdPeopleBatchesRequestBody.new(
  idempotency_key: '550e8400-e29b-41d4-a716-446655440000',
  batch_action: Models::Operations::BatchAction::CREATE,
  batch: []
), x_gusto_api_version: Models::Operations::PostV1CompaniesCompanyIdPeopleBatchesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.people_batch.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostV1CompaniesCompanyIdPeopleBatchesRequestBody](../../models/operations/postv1companiescompanyidpeoplebatchesrequestbody.md)                                                                          | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1CompaniesCompanyIdPeopleBatchesHeaderXGustoAPIVersion)](../../models/operations/postv1companiescompanyidpeoplebatchesheaderxgustoapiversion.md)                                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompaniesCompanyIdPeopleBatchesResponse)](../../models/operations/postv1companiescompanyidpeoplebatchesresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::PeopleBatchConflictError | 409                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_v1_people_batches_people_batch_uuid

Returns the status and results of a people batch.

Poll this endpoint to check the batch processing status and retrieve results.

scope: `people_batches:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-people_batches-people_batch_uuid" method="get" path="/v1/people_batches/{people_batch_uuid}" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.people_batches.get_v1_people_batches_people_batch_uuid(people_batch_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1PeopleBatchesPeopleBatchUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_SIX_MINUS_06_MINUS_15)

unless res.people_batch_results.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `people_batch_uuid`                                                                                                                                                                                                          | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the people batch                                                                                                                                                                                                 |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1PeopleBatchesPeopleBatchUuidHeaderXGustoAPIVersion)](../../models/operations/getv1peoplebatchespeoplebatchuuidheaderxgustoapiversion.md)                                                 | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1PeopleBatchesPeopleBatchUuidResponse)](../../models/operations/getv1peoplebatchespeoplebatchuuidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |