# NotificationEntityType

The type of entity being described.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = NotificationEntityType::BANK_ACCOUNT

# Open enum: use .deserialize() to create instances from custom string values
custom = NotificationEntityType.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `BANK_ACCOUNT`       | BankAccount          |
| `CONTRACTOR`         | Contractor           |
| `CONTRACTOR_PAYMENT` | ContractorPayment    |
| `EMPLOYEE`           | Employee             |
| `PAYROLL`            | Payroll              |
| `PAY_SCHEDULE`       | PaySchedule          |
| `RECOVERY_CASE`      | RecoveryCase         |
| `SIGNATORY`          | Signatory            |
| `WIRE_IN_REQUEST`    | Wire In Request      |