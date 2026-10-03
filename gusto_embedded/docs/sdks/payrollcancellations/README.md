# PayrollCancellations

## Overview

### Available Operations

* [post_v1_payroll_batches](#post_v1_payroll_batches) - Create a payroll cancellation batch
* [get_v1_payroll_batches_payroll_batch_uuid](#get_v1_payroll_batches_payroll_batch_uuid) - Get a payroll cancellation batch

## post_v1_payroll_batches

Cancels up to 100 payrolls across one or more companies the partner is mapped to, asynchronously.

The batch is processed asynchronously. Use the returned batch UUID to poll `GET /v1/payroll_batches/{payroll_batch_uuid}` for status and per-payroll results.

Each item carries the payroll `uuid` and the `company_uuid` that owns it. A payroll whose company is not mapped to the partner — or that doesn't exist — is recorded as a `not_found` exclusion rather than a hard error, so every requested UUID lands in either `results` or `exclusions`.

Idempotency is scoped per `(partner, idempotency_key)`. A duplicate POST with the same `idempotency_key` returns a 409 Conflict referencing the existing batch UUID — no duplicate processing occurs.

📘 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `payroll_batches:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-payroll_batches" method="post" path="/v1/payroll_batches" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.payroll_cancellations.post_v1_payroll_batches(security: Models::Operations::PostV1PayrollBatchesSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
), request_body: Models::Operations::PostV1PayrollBatchesRequestBody.new(
  idempotency_key: '80a74f8b-2c16-45e5-9038-aa108849c6e6',
  batch_action: Models::Operations::BatchAction::CANCEL,
  batch: [
    Models::Operations::Batch.new(
      entity_type: Models::Operations::EntityType::PAYROLL,
      uuid: 'f5ac6d4e-8400-4a52-a5cf-dea57b2ee65a',
      company_uuid: '7cd3f4a2-0bf9-485a-bbc0-f6adbdf0246b'
    ),
  ]
), x_gusto_api_version: Models::Operations::PostV1PayrollBatchesHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.payroll_batch.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [Models::Operations::PostV1PayrollBatchesSecurity](../../models/operations/postv1payrollbatchessecurity.md)                                                                                                                  | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostV1PayrollBatchesRequestBody](../../models/operations/postv1payrollbatchesrequestbody.md)                                                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1PayrollBatchesHeaderXGustoAPIVersion)](../../models/operations/postv1payrollbatchesheaderxgustoapiversion.md)                                                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1PayrollBatchesResponse)](../../models/operations/postv1payrollbatchesresponse.md)**

### Errors

| Error Type                                | Status Code                               | Content Type                              |
| ----------------------------------------- | ----------------------------------------- | ----------------------------------------- |
| Models::Errors::PayrollBatchConflictError | 409                                       | application/json                          |
| Models::Errors::UnprocessableEntityError  | 422                                       | application/json                          |
| Errors::APIError                          | 4XX, 5XX                                  | \*/\*                                     |

## get_v1_payroll_batches_payroll_batch_uuid

Returns the status and per-payroll results of a payroll cancellation batch.

Poll this endpoint until the batch `status` reaches a terminal value (`completed` or `failed`). Once terminal, the response includes the `results` array (one entry per authorized payroll, each with its own per-payroll `status` — `success` or `failed`) and the `exclusions` array (one entry per payroll that could not be processed). A cancel is atomic, so a per-payroll result is only ever `success` or `failed` — never `partial_success`.

Note that the top-level batch `status` (`pending` / `processing` / `completed` / `failed`) is the request lifecycle, distinct from the per-payroll `status` inside `results[]`. A `completed` batch does not imply every payroll was cancelled — inspect the array for per-payroll outcomes.

Results are stored in Redis with a limited TTL after completion. If the partner polls after results have expired, this endpoint returns 410 Gone — partners should re-submit a new batch.

📘 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `payroll_batches:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-payroll_batches-payroll_batch_uuid" method="get" path="/v1/payroll_batches/{payroll_batch_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.payroll_cancellations.get_v1_payroll_batches_payroll_batch_uuid(security: Models::Operations::GetV1PayrollBatchesPayrollBatchUuidSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
), payroll_batch_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1PayrollBatchesPayrollBatchUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.payroll_batch_results.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [Models::Operations::GetV1PayrollBatchesPayrollBatchUuidSecurity](../../models/operations/getv1payrollbatchespayrollbatchuuidsecurity.md)                                                                                    | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `payroll_batch_uuid`                                                                                                                                                                                                         | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the payroll cancellation batch returned by `POST /v1/payroll_batches`.                                                                                                                                           |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1PayrollBatchesPayrollBatchUuidHeaderXGustoAPIVersion)](../../models/operations/getv1payrollbatchespayrollbatchuuidheaderxgustoapiversion.md)                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1PayrollBatchesPayrollBatchUuidResponse)](../../models/operations/getv1payrollbatchespayrollbatchuuidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404, 410                            | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |