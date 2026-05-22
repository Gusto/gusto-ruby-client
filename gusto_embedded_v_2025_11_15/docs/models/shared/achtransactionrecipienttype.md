# AchTransactionRecipientType

The type of recipient associated with the ACH transaction

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = AchTransactionRecipientType::EMPLOYEE

# Open enum: use .deserialize() to create instances from custom string values
custom = AchTransactionRecipientType.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `EMPLOYEE`   | Employee     |
| `CONTRACTOR` | Contractor   |