# DocumentRecipientType

The type of recipient associated with the document (will be `Contractor` for Contractor Documents)

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = DocumentRecipientType::COMPANY

# Open enum: use .deserialize() to create instances from custom string values
custom = DocumentRecipientType.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `COMPANY`    | Company      |
| `EMPLOYEE`   | Employee     |
| `CONTRACTOR` | Contractor   |