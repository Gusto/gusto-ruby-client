# PutV1EmployeesEmployeeIdPaymentMethodType

The payment method type. If type is Check, split_by and splits do not need to be populated. If type is Direct Deposit, split_by and splits are required.

## Example Usage

```ruby
require "gusto_embedded_client_v_2026_06_15"

value = PutV1EmployeesEmployeeIdPaymentMethodType::CHECK
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `CHECK`          | Check            |
| `DIRECT_DEPOSIT` | Direct Deposit   |