# WebhookSubscriptionStatus

The status of the webhook subscription.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = WebhookSubscriptionStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = WebhookSubscriptionStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `PENDING`     | pending       |
| `VERIFIED`    | verified      |
| `REMOVED`     | removed       |
| `UNREACHABLE` | unreachable   |