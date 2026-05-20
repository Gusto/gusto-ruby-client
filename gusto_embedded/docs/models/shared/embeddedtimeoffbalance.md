# EmbeddedTimeOffBalance

Time off balance for an employee, grouped by policy.


## Fields

| Field                                                                 | Type                                                                  | Required                                                              | Description                                                           | Example                                                               |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `employee_uuid`                                                       | *T.nilable(::String)*                                                 | :heavy_minus_sign:                                                    | The UUID of the employee.                                             | 51924fa0-26c6-4d4c-8832-3ef0b422c67e                                  |
| `balances`                                                            | T::Array<[Models::Shared::Balances](../../models/shared/balances.md)> | :heavy_minus_sign:                                                    | The employee's time off balances, one entry per policy.               |                                                                       |