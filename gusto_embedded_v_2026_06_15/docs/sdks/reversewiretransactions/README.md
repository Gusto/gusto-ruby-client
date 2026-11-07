# ReverseWireTransactions

## Overview

### Available Operations

* [get_reverse_wire_transactions](#get_reverse_wire_transactions) - Get all reverse wire transactions for a company

## get_reverse_wire_transactions

Returns a paginated list of reverse wire (drawdown) transactions for a company. Reverse wires are debit transactions initiated by Gusto to pull funds from a partner's bank account to cover payroll or contractor payment obligations. Pagination is returned via the `x-page`, `x-per-page`, `x-total-count`, and `x-total-pages` response headers.

scope: `reverse_wire_transactions:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-reverse-wire-transactions" method="get" path="/v1/companies/{company_uuid}/reverse_wire_transactions" -->
```ruby
require 'gusto_embedded_client_v_2026_06_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)

req = Models::Operations::GetReverseWireTransactionsRequest.new(
  company_uuid: '<id>'
)
res = s.reverse_wire_transactions.get_reverse_wire_transactions(request: req)

unless res.reverse_wire_transaction_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [Models::Operations::GetReverseWireTransactionsRequest](../../models/operations/getreversewiretransactionsrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |

### Response

**[T.nilable(Models::Operations::GetReverseWireTransactionsResponse)](../../models/operations/getreversewiretransactionsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |