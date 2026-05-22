# PaymentStatus

The status of the ACH transaction

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PaymentStatus::UNSUBMITTED

# Open enum: use .deserialize() to create instances from custom string values
custom = PaymentStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `UNSUBMITTED` | unsubmitted   |
| `SUBMITTED`   | submitted     |
| `SUCCESSFUL`  | successful    |
| `FAILED`      | failed        |