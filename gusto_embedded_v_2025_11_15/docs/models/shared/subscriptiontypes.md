# SubscriptionTypes

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = SubscriptionTypes::BANK_ACCOUNT

# Open enum: use .deserialize() to create instances from custom string values
custom = SubscriptionTypes.deserialize("custom_value")
```


## Values

| Name                        | Value                       |
| --------------------------- | --------------------------- |
| `BANK_ACCOUNT`              | BankAccount                 |
| `COMPANY`                   | Company                     |
| `COMPANY_BENEFIT`           | CompanyBenefit              |
| `CONTRACTOR`                | Contractor                  |
| `CONTRACTOR_PAYMENT`        | ContractorPayment           |
| `EMPLOYEE`                  | Employee                    |
| `EMPLOYEE_BENEFIT`          | EmployeeBenefit             |
| `EMPLOYEE_JOB_COMPENSATION` | EmployeeJobCompensation     |
| `EXTERNAL_PAYROLL`          | ExternalPayroll             |
| `FORM`                      | Form                        |
| `LOCATION`                  | Location                    |
| `NOTIFICATION`              | Notification                |
| `PAYROLL`                   | Payroll                     |
| `PAYROLL_SYNC`              | PayrollSync                 |
| `PAY_SCHEDULE`              | PaySchedule                 |
| `SIGNATORY`                 | Signatory                   |