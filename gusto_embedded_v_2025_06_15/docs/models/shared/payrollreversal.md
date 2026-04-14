# PayrollReversal

Example response


## Fields

| Field                                                    | Type                                                     | Required                                                 | Description                                              |
| -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- |
| `reversed_payroll_uuid`                                  | *T.nilable(::String)*                                    | :heavy_minus_sign:                                       | The UUID for the payroll run being reversed.             |
| `reversal_payroll_uuid`                                  | *T.nilable(::String)*                                    | :heavy_minus_sign:                                       | The UUID of the payroll where the reversal was applied.  |
| `reason`                                                 | *T.nilable(::String)*                                    | :heavy_minus_sign:                                       | A reason provided by the admin who created the reversal. |
| `approved_at`                                            | *T.nilable(::String)*                                    | :heavy_minus_sign:                                       | Timestamp of when the reversal was approved.             |
| `category`                                               | *T.nilable(::String)*                                    | :heavy_minus_sign:                                       | Category chosen by the admin who requested the reversal. |
| `reversed_employee_uuids`                                | T::Array<*::String*>                                     | :heavy_minus_sign:                                       | Array of affected employee UUIDs.                        |