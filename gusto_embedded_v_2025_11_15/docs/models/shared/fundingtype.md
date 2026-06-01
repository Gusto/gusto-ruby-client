# FundingType

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = FundingType::ACH

# Open enum: use .deserialize() to create instances from custom string values
custom = FundingType.deserialize("custom_value")
```


## Values

| Name                   | Value                  |
| ---------------------- | ---------------------- |
| `ACH`                  | ach                    |
| `REVERSE_WIRE`         | reverse_wire           |
| `WIRE_IN`              | wire_in                |
| `PARTNER_DISBURSEMENT` | partner_disbursement   |
| `RTP`                  | rtp                    |
| `LINE_OF_CREDIT`       | line_of_credit         |