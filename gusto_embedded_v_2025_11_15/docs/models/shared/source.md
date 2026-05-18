# Source

The source of the company benefit. This can be "internal", "external", or "partnered". Company benefits created via the API default to "external". Certain partners can create company benefits with a source of "partnered".

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = Source::INTERNAL

# Open enum: use .deserialize() to create instances from custom string values
custom = Source.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `INTERNAL`  | internal    |
| `EXTERNAL`  | external    |
| `PARTNERED` | partnered   |