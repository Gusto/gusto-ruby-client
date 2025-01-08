# PayrollPayrollStatusMetaType

Information about the payroll's status and expected dates


## Fields

| Field                                                                            | Type                                                                             | Required                                                                         | Description                                                                      |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `cancellable`                                                                    | *T.nilable(T::Boolean)*                                                          | :heavy_minus_sign:                                                               | true if the payroll may be cancelled.                                            |
| `expected_check_date`                                                            | *T.nilable(::String)*                                                            | :heavy_minus_sign:                                                               | The date an employee will be paid if the payroll is submitted now.               |
| `initial_check_date`                                                             | *T.nilable(::String)*                                                            | :heavy_minus_sign:                                                               | The normal check date for the associated pay period.                             |
| `expected_debit_time`                                                            | *T.nilable(::String)*                                                            | :heavy_minus_sign:                                                               | The time the employer's account will be debited if the payroll is submitted now. |
| `payroll_late`                                                                   | *T.nilable(T::Boolean)*                                                          | :heavy_minus_sign:                                                               | expected_check_date > initial_check_date.                                        |
| `initial_debit_cutoff_time`                                                      | *T.nilable(::String)*                                                            | :heavy_minus_sign:                                                               | Payroll must be submitted at or before this time to avoid late payroll.          |