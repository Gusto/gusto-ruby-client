# ContractorPaymentStatus

Contractor payment status

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = ContractorPaymentStatus::FUNDED

# Open enum: use .deserialize() to create instances from custom string values
custom = ContractorPaymentStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `FUNDED`   | Funded     |
| `UNFUNDED` | Unfunded   |