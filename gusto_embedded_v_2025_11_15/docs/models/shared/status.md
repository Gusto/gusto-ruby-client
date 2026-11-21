# Status

The batch's processing state.
- `pending`: accepted, not yet started
- `processing`: reports are being generated
- `completed`: all reports finished
- `failed`: the batch failed before completing


## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = Status::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = Status.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `PENDING`    | pending      |
| `PROCESSING` | processing   |
| `COMPLETED`  | completed    |
| `FAILED`     | failed       |