# EmbeddedTimeOffRequestStatus

The status of the time off request.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = EmbeddedTimeOffRequestStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = EmbeddedTimeOffRequestStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `PENDING`  | pending    |
| `APPROVED` | approved   |
| `DECLINED` | declined   |
| `CONSUMED` | consumed   |