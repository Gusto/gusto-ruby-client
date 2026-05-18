# EmploymentStatus

The employee's employment status. Supplying an invalid option will set the employment_status to *not_set*.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = EmploymentStatus::PART_TIME

# Open enum: use .deserialize() to create instances from custom string values
custom = EmploymentStatus.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `PART_TIME`          | part_time            |
| `FULL_TIME`          | full_time            |
| `PART_TIME_ELIGIBLE` | part_time_eligible   |
| `VARIABLE`           | variable             |
| `SEASONAL`           | seasonal             |
| `NOT_SET`            | not_set              |