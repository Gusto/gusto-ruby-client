# PeopleBatchResultsResultsStatus

The status of this batch item.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PeopleBatchResultsResultsStatus::SUCCESS

# Open enum: use .deserialize() to create instances from custom string values
custom = PeopleBatchResultsResultsStatus.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `SUCCESS`         | success           |
| `PARTIAL_SUCCESS` | partial_success   |
| `FAILED`          | failed            |