# TaxPayerType

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = TaxPayerType::C_CORPORATION

# Open enum: use .deserialize() to create instances from custom string values
custom = TaxPayerType.deserialize("custom_value")
```


## Values

| Name                  | Value                 |
| --------------------- | --------------------- |
| `C_CORPORATION`       | C-Corporation         |
| `S_CORPORATION`       | S-Corporation         |
| `SOLE_PROPRIETOR`     | Sole proprietor       |
| `LLC`                 | LLC                   |
| `LLP`                 | LLP                   |
| `LIMITED_PARTNERSHIP` | Limited partnership   |
| `CO_OWNERSHIP`        | Co-ownership          |
| `ASSOCIATION`         | Association           |
| `TRUSTEESHIP`         | Trusteeship           |
| `GENERAL_PARTNERSHIP` | General partnership   |
| `JOINT_VENTURE`       | Joint venture         |
| `NON_PROFIT`          | Non-Profit            |