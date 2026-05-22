# PlaidStatus

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PlaidStatus::CONNECTED

# Open enum: use .deserialize() to create instances from custom string values
custom = PlaidStatus.deserialize("custom_value")
```


## Values

| Name           | Value          |
| -------------- | -------------- |
| `CONNECTED`    | connected      |
| `DISCONNECTED` | disconnected   |