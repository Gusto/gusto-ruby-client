# GeneralLedgerReportAggregation

The breakdown level used for the report.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = GeneralLedgerReportAggregation::DEFAULT

# Open enum: use .deserialize() to create instances from custom string values
custom = GeneralLedgerReportAggregation.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `DEFAULT`     | default       |
| `JOB`         | job           |
| `DEPARTMENT`  | department    |
| `INTEGRATION` | integration   |