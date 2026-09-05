# BulkReportStatus

Overall batch status. `pending`/`processing` while in progress; once finished, `success` (all reports succeeded), `partial_success` (some succeeded, some failed), or `failed` (none succeeded).

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = BulkReportStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = BulkReportStatus.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `PENDING`         | pending           |
| `PROCESSING`      | processing        |
| `SUCCESS`         | success           |
| `PARTIAL_SUCCESS` | partial_success   |
| `FAILED`          | failed            |