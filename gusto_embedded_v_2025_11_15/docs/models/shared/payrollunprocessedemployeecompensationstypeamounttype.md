# PayrollUnprocessedEmployeeCompensationsTypeAmountType

How to interpret the amount.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PayrollUnprocessedEmployeeCompensationsTypeAmountType::FIXED

# Open enum: use .deserialize() to create instances from custom string values
custom = PayrollUnprocessedEmployeeCompensationsTypeAmountType.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `FIXED`   | fixed     |
| `PERCENT` | percent   |