# InformationRequestType

The type of information request

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = InformationRequestType::COMPANY_ONBOARDING

# Open enum: use .deserialize() to create instances from custom string values
custom = InformationRequestType.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `COMPANY_ONBOARDING` | company_onboarding   |
| `ACCOUNT_PROTECTION` | account_protection   |
| `PAYMENT_REQUEST`    | payment_request      |
| `PAYMENT_ERROR`      | payment_error        |