# BulkReportItemResultStatus

The terminal state for this individual report.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = BulkReportItemResultStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = BulkReportItemResultStatus.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `PENDING` | pending   |
| `SUCCESS` | success   |
| `FAILED`  | failed    |