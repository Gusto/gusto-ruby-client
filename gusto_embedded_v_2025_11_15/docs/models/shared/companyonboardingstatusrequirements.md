# CompanyOnboardingStatusRequirements

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = CompanyOnboardingStatusRequirements::ADD_ADDRESSES

# Open enum: use .deserialize() to create instances from custom string values
custom = CompanyOnboardingStatusRequirements.deserialize("custom_value")
```


## Values

| Name                | Value               |
| ------------------- | ------------------- |
| `ADD_ADDRESSES`     | add_addresses       |
| `FEDERAL_TAX_SETUP` | federal_tax_setup   |
| `SELECT_INDUSTRY`   | select_industry     |
| `ADD_BANK_INFO`     | add_bank_info       |
| `ADD_EMPLOYEES`     | add_employees       |
| `STATE_SETUP`       | state_setup         |
| `PAYROLL_SCHEDULE`  | payroll_schedule    |
| `SIGN_ALL_FORMS`    | sign_all_forms      |
| `VERIFY_BANK_INFO`  | verify_bank_info    |
| `EXTERNAL_PAYROLL`  | external_payroll    |