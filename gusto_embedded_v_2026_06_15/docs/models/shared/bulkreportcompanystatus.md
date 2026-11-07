# BulkReportCompanyStatus

This company's overall status across its `reports`:
- `success`: every report succeeded
- `partial_success`: some succeeded, some failed
- `failed`: every report failed
- `pending`: at least one report is still being generated


## Example Usage

```ruby
require "gusto_embedded_client_v_2026_06_15"

value = BulkReportCompanyStatus::PENDING
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `PENDING`         | pending           |
| `SUCCESS`         | success           |
| `PARTIAL_SUCCESS` | partial_success   |
| `FAILED`          | failed            |