# ContractorType

The contractor's type, either "Individual" or "Business". 

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = ContractorType::INDIVIDUAL

# Open enum: use .deserialize() to create instances from custom string values
custom = ContractorType.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `INDIVIDUAL` | Individual   |
| `BUSINESS`   | Business     |