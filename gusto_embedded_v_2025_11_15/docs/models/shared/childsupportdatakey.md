# ChildSupportDataKey

A required attribute when creating a garnishment for this state agency. The current values are listed as an enum; though unlikely, values could be added if state agency requirements change in the future.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = ChildSupportDataKey::CASE_NUMBER

# Open enum: use .deserialize() to create instances from custom string values
custom = ChildSupportDataKey.deserialize("custom_value")
```


## Values

| Name                | Value               |
| ------------------- | ------------------- |
| `CASE_NUMBER`       | case_number         |
| `ORDER_NUMBER`      | order_number        |
| `REMITTANCE_NUMBER` | remittance_number   |