# SetupStatus

The current status of the state tax setup.
- `not_started`: No requirements have been filled
- `in_progress`: Some requirements have been filled, or default rates are applied
- `complete`: All requirements have been filled without default rates


## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = SetupStatus::NOT_STARTED

# Open enum: use .deserialize() to create instances from custom string values
custom = SetupStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `NOT_STARTED` | not_started   |
| `IN_PROGRESS` | in_progress   |
| `COMPLETE`    | complete      |