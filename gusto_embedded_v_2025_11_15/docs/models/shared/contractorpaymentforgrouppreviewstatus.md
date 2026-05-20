# ContractorPaymentForGroupPreviewStatus

The status of the contractor payment.  Will transition to `Funded` during payments processing if the payment should be funded, i.e. has `Direct Deposit` for payment method. Contractors payments with `Check` payment method will remain `Unfunded`.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = ContractorPaymentForGroupPreviewStatus::FUNDED

# Open enum: use .deserialize() to create instances from custom string values
custom = ContractorPaymentForGroupPreviewStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `FUNDED`   | Funded     |
| `UNFUNDED` | Unfunded   |