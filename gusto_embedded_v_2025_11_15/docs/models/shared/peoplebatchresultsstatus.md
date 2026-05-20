# PeopleBatchResultsStatus

The current status of the batch processing.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PeopleBatchResultsStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = PeopleBatchResultsStatus.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `PENDING`         | pending           |
| `PROCESSING`      | processing        |
| `COMPLETED`       | completed         |
| `FAILED`          | failed            |
| `PARTIAL_SUCCESS` | partial_success   |