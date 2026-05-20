# PayrollSubmissionBlockerTypeStatus

The status of the submission blocker.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PayrollSubmissionBlockerTypeStatus::UNRESOLVED

# Open enum: use .deserialize() to create instances from custom string values
custom = PayrollSubmissionBlockerTypeStatus.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `UNRESOLVED` | unresolved   |
| `RESOLVED`   | resolved     |