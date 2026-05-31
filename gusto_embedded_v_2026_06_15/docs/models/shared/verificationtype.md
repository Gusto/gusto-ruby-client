# VerificationType

The verification type of the bank account.

'bank_deposits' means the bank account is connected by entering routing and accounting numbers and verifying through micro-deposits.
'plaid' means the bank account is connected through Plaid.

## Example Usage

```ruby
require "gusto_embedded_client_v_2026_06_15"

value = VerificationType::BANK_DEPOSITS
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `BANK_DEPOSITS`  | bank_deposits    |
| `PLAID`          | plaid            |
| `PLAID_EXTERNAL` | plaid_external   |