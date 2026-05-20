# PayrollTypes

Comma-separated list of payroll types to include (regular, transition). Defaults to regular only.

## Example Usage

```ruby
require "gusto_embedded_client"

value = PayrollTypes::REGULAR
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `REGULAR`            | regular              |
| `TRANSITION`         | transition           |
| `REGULAR_TRANSITION` | regular,transition   |