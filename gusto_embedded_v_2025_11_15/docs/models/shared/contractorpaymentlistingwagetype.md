# ContractorPaymentListingWageType

The wage type for the payment.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = ContractorPaymentListingWageType::HOURLY

# Open enum: use .deserialize() to create instances from custom string values
custom = ContractorPaymentListingWageType.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `HOURLY` | Hourly   |
| `FIXED`  | Fixed    |