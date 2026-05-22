# WageType

The contractor's wage type, either "Fixed" or "Hourly".

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = WageType::FIXED

# Open enum: use .deserialize() to create instances from custom string values
custom = WageType.deserialize("custom_value")
```


## Values

| Name     | Value    |
| -------- | -------- |
| `FIXED`  | Fixed    |
| `HOURLY` | Hourly   |