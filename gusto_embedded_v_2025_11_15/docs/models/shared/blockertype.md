# BlockerType

The type of blocker

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = BlockerType::MINIMUM_DAYS

# Open enum: use .deserialize() to create instances from custom string values
custom = BlockerType.deserialize("custom_value")
```


## Values

| Name                      | Value                     |
| ------------------------- | ------------------------- |
| `MINIMUM_DAYS`            | minimum_days              |
| `MINIMUM_FUNDED_PAYMENTS` | minimum_funded_payments   |