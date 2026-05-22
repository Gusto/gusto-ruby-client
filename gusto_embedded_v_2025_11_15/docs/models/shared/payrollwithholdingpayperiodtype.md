# PayrollWithholdingPayPeriodType

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PayrollWithholdingPayPeriodType::EVERY_WEEK

# Open enum: use .deserialize() to create instances from custom string values
custom = PayrollWithholdingPayPeriodType.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `EVERY_WEEK`       | Every week         |
| `EVERY_OTHER_WEEK` | Every other week   |
| `TWICE_PER_MONTH`  | Twice per month    |
| `MONTHLY`          | Monthly            |
| `QUARTERLY`        | Quarterly          |
| `SEMIANNUALLY`     | Semiannually       |
| `ANNUALLY`         | Annually           |