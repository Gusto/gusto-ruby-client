# PayrollUnprocessedEmployeeCompensationsTypePaymentMethod

The employee's compensation payment method. Is *only* `Historical` when retrieving external payrolls initially run outside of Gusto, then put into Gusto.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PayrollUnprocessedEmployeeCompensationsTypePaymentMethod::DIRECT_DEPOSIT

# Open enum: use .deserialize() to create instances from custom string values
custom = PayrollUnprocessedEmployeeCompensationsTypePaymentMethod.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `DIRECT_DEPOSIT` | Direct Deposit   |
| `CHECK`          | Check            |
| `HISTORICAL`     | Historical       |