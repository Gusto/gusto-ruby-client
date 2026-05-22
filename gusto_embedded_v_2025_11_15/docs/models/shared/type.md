# Type

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = Type::SINGLE

# Open enum: use .deserialize() to create instances from custom string values
custom = Type.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `SINGLE`          | single            |
| `HOURLY_SALARIED` | hourly_salaried   |
| `BY_EMPLOYEE`     | by_employee       |
| `BY_DEPARTMENT`   | by_department     |