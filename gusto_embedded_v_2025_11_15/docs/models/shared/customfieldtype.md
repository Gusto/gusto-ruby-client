# CustomFieldType

Input type for the custom field.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = CustomFieldType::TEXT

# Open enum: use .deserialize() to create instances from custom string values
custom = CustomFieldType.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `TEXT`     | text       |
| `CURRENCY` | currency   |
| `NUMBER`   | number     |
| `DATE`     | date       |
| `RADIO`    | radio      |