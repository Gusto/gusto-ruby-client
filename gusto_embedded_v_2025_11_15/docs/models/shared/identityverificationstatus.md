# IdentityVerificationStatus

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = IdentityVerificationStatus::PASS

# Open enum: use .deserialize() to create instances from custom string values
custom = IdentityVerificationStatus.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `PASS`    | Pass      |
| `FAIL`    | Fail      |
| `SKIPPED` | Skipped   |