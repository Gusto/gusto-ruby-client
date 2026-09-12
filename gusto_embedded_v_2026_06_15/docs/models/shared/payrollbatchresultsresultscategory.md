# PayrollBatchResultsResultsCategory

Machine-readable reason the cancellation failed.
- `not_cancellable`: the payroll is past the point where it can be cancelled
- `internal_error`: an unexpected error occurred; the request can be retried


## Example Usage

```ruby
require "gusto_embedded_client_v_2026_06_15"

value = PayrollBatchResultsResultsCategory::NOT_CANCELLABLE
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `NOT_CANCELLABLE` | not_cancellable   |
| `INTERNAL_ERROR`  | internal_error    |