# ContractorOnboardingStatus1

One of the "onboarding_status" enum values.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = ContractorOnboardingStatus1::ADMIN_ONBOARDING_INCOMPLETE

# Open enum: use .deserialize() to create instances from custom string values
custom = ContractorOnboardingStatus1.deserialize("custom_value")
```


## Values

| Name                          | Value                         |
| ----------------------------- | ----------------------------- |
| `ADMIN_ONBOARDING_INCOMPLETE` | admin_onboarding_incomplete   |
| `ADMIN_ONBOARDING_REVIEW`     | admin_onboarding_review       |
| `SELF_ONBOARDING_NOT_INVITED` | self_onboarding_not_invited   |
| `SELF_ONBOARDING_INVITED`     | self_onboarding_invited       |
| `SELF_ONBOARDING_STARTED`     | self_onboarding_started       |
| `SELF_ONBOARDING_REVIEW`      | self_onboarding_review        |
| `ONBOARDING_COMPLETED`        | onboarding_completed          |