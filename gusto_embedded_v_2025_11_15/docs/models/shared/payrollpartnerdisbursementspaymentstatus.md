# PayrollPartnerDisbursementsPaymentStatus

The status of the payment

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PayrollPartnerDisbursementsPaymentStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = PayrollPartnerDisbursementsPaymentStatus.deserialize("custom_value")
```


## Values

| Name                  | Value                 |
| --------------------- | --------------------- |
| `PENDING`             | Pending               |
| `PAID`                | Paid                  |
| `NOT_PARTNER_MANAGED` | Not partner managed   |
| `CONVERTED_TO_CHECK`  | Converted to check    |