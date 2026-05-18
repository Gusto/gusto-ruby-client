<!-- Start SDK Example Usage [usage] -->
```ruby
require "gusto_embedded_client_v_2025_11_15"

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>"
  )
)
res = s
  .introspection
  .get_info(x_gusto_api_version: Models::Operations::XGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.token_info.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->