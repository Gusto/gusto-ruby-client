# PayrollDigests

## Overview

### Available Operations

* [post_v1_payroll_digests](#post_v1_payroll_digests) - Create a payroll digest batch
* [get_v1_payroll_digests_payroll_digest_uuid](#get_v1_payroll_digests_payroll_digest_uuid) - Get a payroll digest batch

## post_v1_payroll_digests

Triggers an asynchronous computation of payroll digest data (statuses, blockers, pay periods, totals) across up to 25 companies that the partner is mapped to.

The batch is processed asynchronously. Use the returned batch UUID to poll `GET /v1/payroll_digests/{payroll_digest_uuid}` for status and results.

Idempotency is scoped per `(partner, idempotency_key)`. A duplicate POST with the same `idempotency_key` returns a 409 Conflict referencing the existing batch UUID — no duplicate computation occurs.

📘 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `payroll_digests:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-payroll_digests" method="post" path="/v1/payroll_digests" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.payroll_digests.post_v1_payroll_digests(security: Models::Operations::PostV1PayrollDigestsSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
), request_body: Models::Operations::PostV1PayrollDigestsRequestBody.new(
  idempotency_key: '80a74f8b-2c16-45e5-9038-aa108849c6e6',
  batch_action: Models::Operations::PostV1PayrollDigestsBatchAction::CREATE,
  batch: []
), x_gusto_api_version: Models::Operations::PostV1PayrollDigestsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.payroll_digest.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [Models::Operations::PostV1PayrollDigestsSecurity](../../models/operations/postv1payrolldigestssecurity.md)                                                                                                                  | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostV1PayrollDigestsRequestBody](../../models/operations/postv1payrolldigestsrequestbody.md)                                                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1PayrollDigestsHeaderXGustoAPIVersion)](../../models/operations/postv1payrolldigestsheaderxgustoapiversion.md)                                                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1PayrollDigestsResponse)](../../models/operations/postv1payrolldigestsresponse.md)**

### Errors

| Error Type                                 | Status Code                                | Content Type                               |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| Models::Errors::PayrollDigestConflictError | 409                                        | application/json                           |
| Models::Errors::UnprocessableEntityError   | 422                                        | application/json                           |
| Errors::APIError                           | 4XX, 5XX                                   | \*/\*                                      |

## get_v1_payroll_digests_payroll_digest_uuid

Returns the status and results of a payroll digest batch.

Poll this endpoint until the batch `status` reaches a terminal value (`completed` or `failed`). Once terminal, the response includes the full `results` array (one entry per attempted company, each with its own per-company `status` — `success`, `partial_success`, or `failed`) and the `exclusions` array (one entry per company that could not be looked up or processed).

Note that the top-level batch `status` (`pending` / `processing` / `completed` / `failed`) is distinct from the per-company `status` returned inside `results[]` and `exclusions[]`. A `completed` batch does not imply every company succeeded — inspect the arrays for per-company outcomes.

Results are stored in Redis with a short TTL after completion. If the partner polls after results have expired, this endpoint returns 410 Gone — partners should re-submit a new batch to fetch fresh data.

📘 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `payroll_digests:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-payroll_digests-payroll_digest_uuid" method="get" path="/v1/payroll_digests/{payroll_digest_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.payroll_digests.get_v1_payroll_digests_payroll_digest_uuid(security: Models::Operations::GetV1PayrollDigestsPayrollDigestUuidSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
), payroll_digest_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1PayrollDigestsPayrollDigestUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.payroll_digest_results.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [Models::Operations::GetV1PayrollDigestsPayrollDigestUuidSecurity](../../models/operations/getv1payrolldigestspayrolldigestuuidsecurity.md)                                                                                  | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `payroll_digest_uuid`                                                                                                                                                                                                        | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the payroll digest batch returned by `POST /v1/payroll_digests`.                                                                                                                                                 |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1PayrollDigestsPayrollDigestUuidHeaderXGustoAPIVersion)](../../models/operations/getv1payrolldigestspayrolldigestuuidheaderxgustoapiversion.md)                                           | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1PayrollDigestsPayrollDigestUuidResponse)](../../models/operations/getv1payrolldigestspayrolldigestuuidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404, 410                            | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |