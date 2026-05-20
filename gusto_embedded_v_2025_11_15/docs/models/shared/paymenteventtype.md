# PaymentEventType

The type of payment event associated with the ACH transaction

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PaymentEventType::PAYROLL

# Open enum: use .deserialize() to create instances from custom string values
custom = PaymentEventType.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `PAYROLL`            | Payroll              |
| `CONTRACTOR_PAYMENT` | ContractorPayment    |