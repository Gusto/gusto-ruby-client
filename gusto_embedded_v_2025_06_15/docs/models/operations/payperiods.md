# PayPeriods


## Fields

| Field                                                            | Type                                                             | Required                                                         | Description                                                      |
| ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- |
| `check_date`                                                     | *T.nilable(::String)*                                            | :heavy_minus_sign:                                               | The payment date, "Check date", for the pay period               |
| `run_payroll_by`                                                 | *T.nilable(::String)*                                            | :heavy_minus_sign:                                               | The deadline to run payroll for direct deposit on the check date |
| `start_date`                                                     | *T.nilable(::String)*                                            | :heavy_minus_sign:                                               | The first day of the pay period                                  |
| `end_date`                                                       | *T.nilable(::String)*                                            | :heavy_minus_sign:                                               | The last day of the pay period.                                  |