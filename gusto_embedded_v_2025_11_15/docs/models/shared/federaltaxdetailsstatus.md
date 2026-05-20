# FederalTaxDetailsStatus

The status of EIN verification:
- `pending`: The EIN verification process has not completed (or the company does not yet have an EIN).
- `verified`: The EIN has been successfully verified as a valid EIN with the IRS.
- `failed`: The company's EIN did not pass verification. Common issues are being entered incorrectly or not matching the company's legal name.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = FederalTaxDetailsStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = FederalTaxDetailsStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `PENDING`  | pending    |
| `VERIFIED` | verified   |
| `FAILED`   | failed     |