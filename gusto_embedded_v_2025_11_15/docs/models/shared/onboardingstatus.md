# OnboardingStatus

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = OnboardingStatus::ONBOARDING_COMPLETED

# Open enum: use .deserialize() to create instances from custom string values
custom = OnboardingStatus.deserialize("custom_value")
```


## Values

| Name                                    | Value                                   |
| --------------------------------------- | --------------------------------------- |
| `ONBOARDING_COMPLETED`                  | onboarding_completed                    |
| `ADMIN_ONBOARDING_INCOMPLETE`           | admin_onboarding_incomplete             |
| `SELF_ONBOARDING_PENDING_INVITE`        | self_onboarding_pending_invite          |
| `SELF_ONBOARDING_INVITED`               | self_onboarding_invited                 |
| `SELF_ONBOARDING_INVITED_STARTED`       | self_onboarding_invited_started         |
| `SELF_ONBOARDING_INVITED_OVERDUE`       | self_onboarding_invited_overdue         |
| `SELF_ONBOARDING_COMPLETED_BY_EMPLOYEE` | self_onboarding_completed_by_employee   |
| `SELF_ONBOARDING_AWAITING_ADMIN_REVIEW` | self_onboarding_awaiting_admin_review   |