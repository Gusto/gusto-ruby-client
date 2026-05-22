# PeopleBatchStatus

The current status of the batch processing.

## Example Usage

```ruby
require "gusto_embedded_client"

value = PeopleBatchStatus::PENDING
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `PENDING`         | pending           |
| `PROCESSING`      | processing        |
| `COMPLETED`       | completed         |
| `FAILED`          | failed            |
| `PARTIAL_SUCCESS` | partial_success   |