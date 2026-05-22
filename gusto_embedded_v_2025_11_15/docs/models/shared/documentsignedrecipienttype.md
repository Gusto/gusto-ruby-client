# DocumentSignedRecipientType

The type of recipient associated with the document (will be `Contractor` for Contractor Documents)

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = DocumentSignedRecipientType::COMPANY

# Open enum: use .deserialize() to create instances from custom string values
custom = DocumentSignedRecipientType.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `COMPANY`    | Company      |
| `EMPLOYEE`   | Employee     |
| `CONTRACTOR` | Contractor   |