# TaxRequirementMetadataValidationType

Describes the type of tax_rate validation rule

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = TaxRequirementMetadataValidationType::ONE_OF

# Open enum: use .deserialize() to create instances from custom string values
custom = TaxRequirementMetadataValidationType.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `ONE_OF`  | one_of    |
| `MIN_MAX` | min_max   |