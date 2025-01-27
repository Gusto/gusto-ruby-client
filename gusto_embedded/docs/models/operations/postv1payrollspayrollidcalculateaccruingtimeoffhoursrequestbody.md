# PostV1PayrollsPayrollIdCalculateAccruingTimeOffHoursRequestBody


## Fields

| Field                                           | Type                                            | Required                                        | Description                                     |
| ----------------------------------------------- | ----------------------------------------------- | ----------------------------------------------- | ----------------------------------------------- |
| `regular_hours_worked`                          | *T.nilable(::Float)*                            | :heavy_minus_sign:                              | regular hours worked in this pay period         |
| `overtime_hours_worked`                         | *T.nilable(::Float)*                            | :heavy_minus_sign:                              | overtime hours worked in this pay period        |
| `double_overtime_hours_worked`                  | *T.nilable(::Float)*                            | :heavy_minus_sign:                              | double overtime hours worked in this pay period |
| `pto_hours_used`                                | *T.nilable(::Float)*                            | :heavy_minus_sign:                              | paid time off hours used in this pay period     |
| `sick_hours_used`                               | *T.nilable(::Float)*                            | :heavy_minus_sign:                              | sick hours used in this pay period              |