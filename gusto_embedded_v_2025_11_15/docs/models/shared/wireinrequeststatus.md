# WireInRequestStatus

Status of the wire in

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = WireInRequestStatus::AWAITING_FUNDS

# Open enum: use .deserialize() to create instances from custom string values
custom = WireInRequestStatus.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `AWAITING_FUNDS` | awaiting_funds   |
| `PENDING_REVIEW` | pending_review   |
| `APPROVED`       | approved         |
| `CANCELED`       | canceled         |