# GarnishmentType

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = GarnishmentType::CHILD_SUPPORT

# Open enum: use .deserialize() to create instances from custom string values
custom = GarnishmentType.deserialize("custom_value")
```


## Values

| Name                   | Value                  |
| ---------------------- | ---------------------- |
| `CHILD_SUPPORT`        | child_support          |
| `FEDERAL_TAX_LIEN`     | federal_tax_lien       |
| `STATE_TAX_LIEN`       | state_tax_lien         |
| `STUDENT_LOAN`         | student_loan           |
| `CREDITOR_GARNISHMENT` | creditor_garnishment   |
| `FEDERAL_LOAN`         | federal_loan           |
| `OTHER_GARNISHMENT`    | other_garnishment      |