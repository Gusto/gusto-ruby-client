# PaymentSpeed

Payment speed. READ-ONLY.
- `1-day`: Next-day ACH (only for partners that opt in).
- `2-day`: Two-day ACH.
- `4-day`: Standard ACH.


## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PaymentSpeed::ONE_MINUS_DAY

# Open enum: use .deserialize() to create instances from custom string values
custom = PaymentSpeed.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `ONE_MINUS_DAY`  | 1-day            |
| `TWO_MINUS_DAY`  | 2-day            |
| `FOUR_MINUS_DAY` | 4-day            |