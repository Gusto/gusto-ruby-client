# TaxFilingStatus

The current status of the tax filing

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = TaxFilingStatus::NOT_STARTED

# Open enum: use .deserialize() to create instances from custom string values
custom = TaxFilingStatus.deserialize("custom_value")
```


## Values

| Name           | Value          |
| -------------- | -------------- |
| `NOT_STARTED`  | not_started    |
| `IN_PROGRESS`  | in_progress    |
| `BLOCKED`      | blocked        |
| `ACCEPTED`     | accepted       |
| `NOT_REQUIRED` | not_required   |
| `FAILED`       | failed         |
| `UNKNOWN`      | unknown        |