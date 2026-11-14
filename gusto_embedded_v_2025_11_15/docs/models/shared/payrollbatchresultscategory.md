# PayrollBatchResultsCategory

Machine-readable category for why the payroll was excluded.
- `not_found`: the payroll does not exist, or is not associated with a company the partner is mapped to
- `duplicate_operation`: the same payroll UUID appeared more than once in the request; only the first occurrence is processed


## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PayrollBatchResultsCategory::NOT_FOUND

# Open enum: use .deserialize() to create instances from custom string values
custom = PayrollBatchResultsCategory.deserialize("custom_value")
```


## Values

| Name                  | Value                 |
| --------------------- | --------------------- |
| `NOT_FOUND`           | not_found             |
| `DUPLICATE_OPERATION` | duplicate_operation   |