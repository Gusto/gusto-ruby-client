# VerificationType

The verification type of the bank account.

'bank_deposits' means the bank account is connected by entering routing and accounting numbers and verifying through micro-deposits.
'plaid' means the bank account is connected through Plaid.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = VerificationType::BANK_DEPOSITS

# Open enum: use .deserialize() to create instances from custom string values
custom = VerificationType.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `BANK_DEPOSITS`  | bank_deposits    |
| `PLAID`          | plaid            |
| `PLAID_EXTERNAL` | plaid_external   |