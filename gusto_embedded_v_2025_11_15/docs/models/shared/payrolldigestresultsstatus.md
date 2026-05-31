# PayrollDigestResultsStatus

The lifecycle status of the batch request itself. Terminal values are `completed` (processing finished — inspect `results` and `exclusions` for per-company outcomes) and `failed` (request failed; can be retried). This is distinct from the per-company `status` returned inside `results[]` and `exclusions[]`.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PayrollDigestResultsStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = PayrollDigestResultsStatus.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `PENDING`    | pending      |
| `PROCESSING` | processing   |
| `COMPLETED`  | completed    |
| `FAILED`     | failed       |