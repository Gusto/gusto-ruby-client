# EmployeePayStub

The representation of an employee pay stub information.


## Fields

| Field                                                             | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `uuid`                                                            | *::String*                                                        | :heavy_check_mark:                                                | The UUID of the employee pay stub.                                |
| `check_date`                                                      | *T.nilable(::String)*                                             | :heavy_minus_sign:                                                | The check date of the pay stub.                                   |
| `gross_pay`                                                       | *T.nilable(::String)*                                             | :heavy_minus_sign:                                                | The gross pay amount for the pay stub.                            |
| `net_pay`                                                         | *T.nilable(::String)*                                             | :heavy_minus_sign:                                                | The net pay amount for the pay stub.                              |
| `payroll_uuid`                                                    | *T.nilable(::String)*                                             | :heavy_minus_sign:                                                | A unique identifier of the payroll to which the pay stub belongs. |
| `check_amount`                                                    | *T.nilable(::String)*                                             | :heavy_minus_sign:                                                | The check amount for the pay stub.                                |