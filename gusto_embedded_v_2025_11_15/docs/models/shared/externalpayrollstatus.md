# ExternalPayrollStatus

The status of the external payroll. The status will be `unprocessed` when the external payroll is created and transition to `processed` once tax liabilities are entered and finalized.  Once in the `processed` status all actions that can edit an external payroll will be disabled.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = ExternalPayrollStatus::UNPROCESSED

# Open enum: use .deserialize() to create instances from custom string values
custom = ExternalPayrollStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `UNPROCESSED` | unprocessed   |
| `PROCESSED`   | processed     |