# Category

The category of the company attachment.
- `gep_notice`: A tax notice attachment
- `compliance`: A compliance attachment
- `other`: Any other attachment type


## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = Category::GEP_NOTICE

# Open enum: use .deserialize() to create instances from custom string values
custom = Category.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `GEP_NOTICE` | gep_notice   |
| `COMPLIANCE` | compliance   |
| `OTHER`      | other        |