# AmountType

The amount type of the deduction for the pay period. Only present for unprocessed payrolls.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = AmountType::FIXED

# Open enum: use .deserialize() to create instances from custom string values
custom = AmountType.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `FIXED`   | fixed     |
| `PERCENT` | percent   |