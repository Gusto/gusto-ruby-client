# Name

The name of the paid time off type.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = Name::VACATION_HOURS

# Open enum: use .deserialize() to create instances from custom string values
custom = Name.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `VACATION_HOURS` | Vacation Hours   |
| `SICK_HOURS`     | Sick Hours       |
| `HOLIDAY_HOURS`  | Holiday Hours    |