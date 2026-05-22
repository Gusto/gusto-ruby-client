# ResponseType

The type of response to the question

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = ResponseType::TEXT

# Open enum: use .deserialize() to create instances from custom string values
custom = ResponseType.deserialize("custom_value")
```


## Values

| Name           | Value          |
| -------------- | -------------- |
| `TEXT`         | text           |
| `DOCUMENT`     | document       |
| `PERSONA`      | persona        |
| `RADIO_BUTTON` | radio_button   |