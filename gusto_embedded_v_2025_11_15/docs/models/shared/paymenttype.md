# PaymentType

Type of payment for the wire in

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PaymentType::PAYROLL

# Open enum: use .deserialize() to create instances from custom string values
custom = PaymentType.deserialize("custom_value")
```


## Values

| Name                       | Value                      |
| -------------------------- | -------------------------- |
| `PAYROLL`                  | Payroll                    |
| `CONTRACTOR_PAYMENT_GROUP` | ContractorPaymentGroup     |