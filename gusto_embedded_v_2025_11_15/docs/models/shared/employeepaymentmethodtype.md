# EmployeePaymentMethodType

The payment method type. If type is Check, then `split_by` and `splits` do not need to be populated. If type is Direct Deposit, `split_by` and `splits` are required.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = EmployeePaymentMethodType::DIRECT_DEPOSIT

# Open enum: use .deserialize() to create instances from custom string values
custom = EmployeePaymentMethodType.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `DIRECT_DEPOSIT` | Direct Deposit   |
| `CHECK`          | Check            |