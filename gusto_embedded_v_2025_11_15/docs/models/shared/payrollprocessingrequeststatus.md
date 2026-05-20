# PayrollProcessingRequestStatus

The status of the payroll processing request

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PayrollProcessingRequestStatus::CALCULATING

# Open enum: use .deserialize() to create instances from custom string values
custom = PayrollProcessingRequestStatus.deserialize("custom_value")
```


## Values

| Name                | Value               |
| ------------------- | ------------------- |
| `CALCULATING`       | calculating         |
| `CALCULATE_SUCCESS` | calculate_success   |
| `SUBMITTING`        | submitting          |
| `SUBMIT_SUCCESS`    | submit_success      |
| `PROCESSING_FAILED` | processing_failed   |