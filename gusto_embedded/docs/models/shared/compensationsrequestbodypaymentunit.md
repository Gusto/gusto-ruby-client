# CompensationsRequestBodyPaymentUnit

The unit accompanying the compensation rate. If the employee is an owner, rate should be 'Paycheck'.

## Example Usage

```ruby
require "gusto_embedded_client"

value = CompensationsRequestBodyPaymentUnit::HOUR
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `HOUR`     | Hour       |
| `WEEK`     | Week       |
| `MONTH`    | Month      |
| `YEAR`     | Year       |
| `PAYCHECK` | Paycheck   |