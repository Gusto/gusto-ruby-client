# AchTransactions

## Overview

### Available Operations

* [get_all](#get_all) - Get all ACH transactions for a company

## get_all

Fetches all ACH transactions for a company.

scope: `ach_transactions:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-ach-transactions" method="get" path="/v1/companies/{company_uuid}/ach_transactions" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)

req = Models::Operations::GetAchTransactionsRequest.new(
  company_uuid: '<id>'
)
res = s.ach_transactions.get_all(request: req)

unless res.ach_transaction_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::GetAchTransactionsRequest](../../models/operations/getachtransactionsrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::GetAchTransactionsResponse)](../../models/operations/getachtransactionsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |