# ExternalPayrollStatus

The status of the external payroll. The status will be `unprocessed` when the external payroll is created and transition to `processed` once tax liabilities are entered and finalized.  Once in the `processed` status all actions that can edit an external payroll will be disabled.

## Example Usage

```ruby
require "gusto_embedded_client_v_2026_06_15"

value = ExternalPayrollStatus::UNPROCESSED
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `UNPROCESSED` | unprocessed   |
| `PROCESSED`   | processed     |