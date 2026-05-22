# VerificationStatus

The verification status of the bank account.

'awaiting_deposits' means the bank account is just created and money is being transferred.
'ready_for_verification' means the micro-deposits are completed and the verification process can begin by using the verify endpoint.
'verified' means the bank account is verified.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = VerificationStatus::AWAITING_DEPOSITS

# Open enum: use .deserialize() to create instances from custom string values
custom = VerificationStatus.deserialize("custom_value")
```


## Values

| Name                     | Value                    |
| ------------------------ | ------------------------ |
| `AWAITING_DEPOSITS`      | awaiting_deposits        |
| `READY_FOR_VERIFICATION` | ready_for_verification   |
| `VERIFIED`               | verified                 |