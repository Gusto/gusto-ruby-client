# Tier

The Gusto product tier of the company (not applicable to Embedded partner managed companies).

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = Tier::SIMPLE

# Open enum: use .deserialize() to create instances from custom string values
custom = Tier.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `SIMPLE`          | simple            |
| `PLUS`            | plus              |
| `PREMIUM`         | premium           |
| `CORE`            | core              |
| `COMPLETE`        | complete          |
| `CONCIERGE`       | concierge         |
| `CONTRACTOR_ONLY` | contractor_only   |
| `BASIC`           | basic             |