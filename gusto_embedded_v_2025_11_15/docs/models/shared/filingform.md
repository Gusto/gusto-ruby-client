# FilingForm

The form used by the company for federal tax filing. One of:
- 941 (Quarterly federal tax return form)
- 944 (Annual federal tax return form)

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = FilingForm::NINE_HUNDRED_AND_FORTY_ONE

# Open enum: use .deserialize() to create instances from custom string values
custom = FilingForm.deserialize("custom_value")
```


## Values

| Name                          | Value                         |
| ----------------------------- | ----------------------------- |
| `NINE_HUNDRED_AND_FORTY_ONE`  | 941                           |
| `NINE_HUNDRED_AND_FORTY_FOUR` | 944                           |