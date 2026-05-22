# ContractorPaymentPaymentMethod

The payment method.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = ContractorPaymentPaymentMethod::DIRECT_DEPOSIT

# Open enum: use .deserialize() to create instances from custom string values
custom = ContractorPaymentPaymentMethod.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `DIRECT_DEPOSIT`     | Direct Deposit       |
| `CHECK`              | Check                |
| `HISTORICAL_PAYMENT` | Historical Payment   |
| `CORRECTION_PAYMENT` | Correction Payment   |