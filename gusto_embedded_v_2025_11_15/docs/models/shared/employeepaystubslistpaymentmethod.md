# EmployeePayStubsListPaymentMethod

The payment method for the pay stub.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = EmployeePayStubsListPaymentMethod::DIRECT_DEPOSIT

# Open enum: use .deserialize() to create instances from custom string values
custom = EmployeePayStubsListPaymentMethod.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `DIRECT_DEPOSIT` | Direct Deposit   |
| `CHECK`          | Check            |