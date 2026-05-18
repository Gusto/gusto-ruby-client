# GeneratedDocumentStatus

Current status of the Generated Document

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = GeneratedDocumentStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = GeneratedDocumentStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `PENDING`   | pending     |
| `STARTED`   | started     |
| `SUCCEEDED` | succeeded   |
| `FAILED`    | failed      |