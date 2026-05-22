# AccountType

Bank account type

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = AccountType::CHECKING

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountType.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `CHECKING` | Checking   |
| `SAVINGS`  | Savings    |