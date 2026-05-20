# PayrollPartnerDisbursementsPaymentMethod

The payment method for the disbursement

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = PayrollPartnerDisbursementsPaymentMethod::DIRECT_DEPOSIT

# Open enum: use .deserialize() to create instances from custom string values
custom = PayrollPartnerDisbursementsPaymentMethod.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `DIRECT_DEPOSIT` | Direct Deposit   |
| `CHECK`          | Check            |