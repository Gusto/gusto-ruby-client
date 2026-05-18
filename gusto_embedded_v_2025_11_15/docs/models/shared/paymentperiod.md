# PaymentPeriod

How often the agency collects the withholding amount. e.g. $500 monthly -> `Monthly`.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PaymentPeriod::EVERY_WEEK

# Open enum: use .deserialize() to create instances from custom string values
custom = PaymentPeriod.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `EVERY_WEEK`       | Every week         |
| `EVERY_OTHER_WEEK` | Every other week   |
| `TWICE_PER_MONTH`  | Twice per month    |
| `MONTHLY`          | Monthly            |