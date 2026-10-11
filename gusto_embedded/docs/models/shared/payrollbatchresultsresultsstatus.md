# PayrollBatchResultsResultsStatus

The outcome of cancelling this payroll. A cancel is atomic — there is no per-payroll `partial_success`.
- `success`: the payroll was cancelled, or required no action (already cancelled / never run)
- `failed`: the payroll could not be cancelled; see `errors`


## Example Usage

```ruby
require "gusto_embedded_client"

value = PayrollBatchResultsResultsStatus::SUCCESS
```


## Values

| Name      | Value     |
| --------- | --------- |
| `SUCCESS` | success   |
| `FAILED`  | failed    |