# WebhooksHealthCheckStatusStatus

Latest health status of the webhooks system

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = WebhooksHealthCheckStatusStatus::HEALTHY

# Open enum: use .deserialize() to create instances from custom string values
custom = WebhooksHealthCheckStatusStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `HEALTHY`   | healthy     |
| `UNHEALTHY` | unhealthy   |
| `UNKNOWN`   | unknown     |