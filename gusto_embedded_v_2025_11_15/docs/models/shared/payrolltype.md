# PayrollType

Whether it is regular pay period or transition pay period.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PayrollType::REGULAR

# Open enum: use .deserialize() to create instances from custom string values
custom = PayrollType.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `REGULAR`    | regular      |
| `TRANSITION` | transition   |