# PayrollBatchResultsResultsStatus

The outcome of cancelling this payroll. A cancel is atomic — there is no per-payroll `partial_success`.
- `success`: the payroll was cancelled, or required no action (already cancelled / never run)
- `failed`: the payroll could not be cancelled; see `errors`


## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PayrollBatchResultsResultsStatus::SUCCESS

# Open enum: use .deserialize() to create instances from custom string values
custom = PayrollBatchResultsResultsStatus.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `SUCCESS` | success   |
| `FAILED`  | failed    |