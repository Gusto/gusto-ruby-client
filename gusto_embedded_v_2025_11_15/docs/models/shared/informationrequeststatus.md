# InformationRequestStatus

The status of the information request

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = InformationRequestStatus::PENDING_RESPONSE

# Open enum: use .deserialize() to create instances from custom string values
custom = InformationRequestStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `PENDING_RESPONSE` | pending_response   |
| `PENDING_REVIEW`   | pending_review     |
| `APPROVED`         | approved           |