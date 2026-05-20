# RecoveryCaseStatus

Status of the recovery case

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = RecoveryCaseStatus::OPEN

# Open enum: use .deserialize() to create instances from custom string values
custom = RecoveryCaseStatus.deserialize("custom_value")
```


## Values

| Name                | Value               |
| ------------------- | ------------------- |
| `OPEN`              | open                |
| `REDEBIT_INITIATED` | redebit_initiated   |
| `WIRE_INITIATED`    | wire_initiated      |
| `RECOVERED`         | recovered           |
| `LOST`              | lost                |