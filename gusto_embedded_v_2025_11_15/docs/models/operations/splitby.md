# SplitBy

How the payment will be split. If Percentage, split amounts must add up to exactly 100. If Amount, values are in cents and the last split amount must be null to capture the remainder.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = SplitBy::PERCENTAGE
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `PERCENTAGE` | Percentage   |
| `AMOUNT`     | Amount       |