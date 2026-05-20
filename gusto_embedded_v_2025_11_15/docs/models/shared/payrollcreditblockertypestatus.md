# PayrollCreditBlockerTypeStatus

The status of the credit blocker

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PayrollCreditBlockerTypeStatus::UNRESOLVED

# Open enum: use .deserialize() to create instances from custom string values
custom = PayrollCreditBlockerTypeStatus.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `UNRESOLVED`     | unresolved       |
| `PENDING_REVIEW` | pending_review   |
| `RESOLVED`       | resolved         |
| `FAILED`         | failed           |