# BulkReportItemResultReportType

Which report this entry refers to.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = BulkReportItemResultReportType::CUSTOM_REPORT

# Open enum: use .deserialize() to create instances from custom string values
custom = BulkReportItemResultReportType.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `CUSTOM_REPORT`  | custom_report    |
| `GENERAL_LEDGER` | general_ledger   |