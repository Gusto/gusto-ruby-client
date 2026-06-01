# PayrollDigestResultsResultsStatus

The status of this company's digest computation.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PayrollDigestResultsResultsStatus::SUCCESS

# Open enum: use .deserialize() to create instances from custom string values
custom = PayrollDigestResultsResultsStatus.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `SUCCESS`         | success           |
| `PARTIAL_SUCCESS` | partial_success   |
| `FAILED`          | failed            |