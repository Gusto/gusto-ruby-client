# ContractorPaymentGroupPreviewStatus

The status of the contractor payment group.  Will be `Funded` if all payments that should be funded (i.e. have `Direct Deposit` for payment method) are funded.  A group can have status `Funded` while having associated payments that have status `Unfunded`, i.e. payment with `Check` payment method.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = ContractorPaymentGroupPreviewStatus::UNFUNDED

# Open enum: use .deserialize() to create instances from custom string values
custom = ContractorPaymentGroupPreviewStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `UNFUNDED` | Unfunded   |
| `FUNDED`   | Funded     |