# AuthorizationStatus

The employee's authorization status

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = AuthorizationStatus::CITIZEN

# Open enum: use .deserialize() to create instances from custom string values
custom = AuthorizationStatus.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `CITIZEN`            | citizen              |
| `NONCITIZEN`         | noncitizen           |
| `PERMANENT_RESIDENT` | permanent_resident   |
| `ALIEN`              | alien                |