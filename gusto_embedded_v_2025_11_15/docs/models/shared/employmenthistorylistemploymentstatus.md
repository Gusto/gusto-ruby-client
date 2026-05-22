# EmploymentHistoryListEmploymentStatus

The employee's employment status. Supplying an invalid option will set the employment_status to *not_set*.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = EmploymentHistoryListEmploymentStatus::PART_TIME

# Open enum: use .deserialize() to create instances from custom string values
custom = EmploymentHistoryListEmploymentStatus.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `PART_TIME`          | part_time            |
| `FULL_TIME`          | full_time            |
| `PART_TIME_ELIGIBLE` | part_time_eligible   |
| `VARIABLE`           | variable             |
| `SEASONAL_NOT_SET`   | seasonal - not_set   |