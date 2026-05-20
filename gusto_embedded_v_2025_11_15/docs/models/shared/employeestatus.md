# EmployeeStatus

The current status of the member portal invitation.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = EmployeeStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = EmployeeStatus.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `PENDING`   | pending     |
| `SENT`      | sent        |
| `VERIFIED`  | verified    |
| `COMPLETE`  | complete    |
| `CANCELLED` | cancelled   |