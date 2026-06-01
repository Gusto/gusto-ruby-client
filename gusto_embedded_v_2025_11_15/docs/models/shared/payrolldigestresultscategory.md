# PayrollDigestResultsCategory

Machine-readable category for why the company was excluded.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PayrollDigestResultsCategory::NOT_FOUND

# Open enum: use .deserialize() to create instances from custom string values
custom = PayrollDigestResultsCategory.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `NOT_FOUND`        | not_found          |
| `COMPANY_INACTIVE` | company_inactive   |
| `DUPLICATE`        | duplicate          |
| `INTERNAL_ERROR`   | internal_error     |