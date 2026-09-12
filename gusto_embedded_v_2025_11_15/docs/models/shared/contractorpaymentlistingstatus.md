# ContractorPaymentListingStatus

Contractor payment status

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = ContractorPaymentListingStatus::FUNDED

# Open enum: use .deserialize() to create instances from custom string values
custom = ContractorPaymentListingStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `FUNDED`   | Funded     |
| `UNFUNDED` | Unfunded   |