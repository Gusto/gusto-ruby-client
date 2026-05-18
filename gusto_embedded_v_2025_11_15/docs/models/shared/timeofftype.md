# TimeOffType

Type of the time off activity

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = TimeOffType::VACATION

# Open enum: use .deserialize() to create instances from custom string values
custom = TimeOffType.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `VACATION` | vacation   |
| `SICK`     | sick       |