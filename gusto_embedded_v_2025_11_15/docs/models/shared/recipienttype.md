# RecipientType

The type of recipient associated with the document (will be `Contractor` for Contractor Documents)

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = RecipientType::COMPANY

# Open enum: use .deserialize() to create instances from custom string values
custom = RecipientType.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `COMPANY`    | Company      |
| `EMPLOYEE`   | Employee     |
| `CONTRACTOR` | Contractor   |