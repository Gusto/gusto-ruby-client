<!-- Start SDK Example Usage [usage] -->
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
<!-- End SDK Example Usage [usage] -->