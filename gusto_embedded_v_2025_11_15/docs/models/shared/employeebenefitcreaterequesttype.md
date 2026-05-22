# EmployeeBenefitCreateRequestType

The company contribution scheme.

`amount`: The company contributes a fixed amount per payroll. If elective is true, the contribution is matching, dollar-for-dollar.

`percentage`: The company contributes a percentage of the payroll amount per payroll period. If elective is true, the contribution is matching, dollar-for-dollar.

`tiered`: The size of the company contribution corresponds to the size of the employee deduction relative to a tiered matching scheme.

## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = EmployeeBenefitCreateRequestType::TIERED
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `TIERED`     | tiered       |
| `PERCENTAGE` | percentage   |
| `AMOUNT`     | amount       |