# PolicyType

Type of the time off policy. Only "vacation" and "sick" can be created through the API, but other types may be present if the company was previously a Gusto.com customer.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PolicyType::VACATION

# Open enum: use .deserialize() to create instances from custom string values
custom = PolicyType.deserialize("custom_value")
```


## Values

| Name                       | Value                      |
| -------------------------- | -------------------------- |
| `VACATION`                 | vacation                   |
| `SICK`                     | sick                       |
| `BEREAVEMENT`              | bereavement                |
| `CUSTOM`                   | custom                     |
| `FLOATING_HOLIDAY`         | floating_holiday           |
| `JURY_DUTY`                | jury_duty                  |
| `LEARNING_AND_DEVELOPMENT` | learning_and_development   |
| `PARENTAL_LEAVE`           | parental_leave             |
| `PERSONAL_DAY`             | personal_day               |
| `VOLUNTEER`                | volunteer                  |
| `WEATHER`                  | weather                    |