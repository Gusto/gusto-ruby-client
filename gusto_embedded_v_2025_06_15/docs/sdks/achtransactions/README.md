# AchTransactions
(*ach_transactions*)

## Overview

### Available Operations

* [get_all](#get_all) - Get all ACH transactions for a company

## get_all

Fetches all ACH transactions for a company.

scope: `ach_transactions:read`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new(
      security: ::GustoEmbedded::Shared::Security.new(
        company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
      ),
    )

req = ::GustoEmbedded::Operations::GetAchTransactionsRequest.new(
  company_uuid: "<id>",
)

res = s.ach_transactions.get_all(req)

if ! res.ach_transaction_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                      | Type                                                                                                           | Required                                                                                                       | Description                                                                                                    |
| -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                      | [::GustoEmbedded::Operations::GetAchTransactionsRequest](../../models/operations/getachtransactionsrequest.md) | :heavy_check_mark:                                                                                             | The request object to use for the request.                                                                     |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetAchTransactionsResponse)](../../models/operations/getachtransactionsresponse.md)**

