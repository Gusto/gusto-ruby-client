# PayPeriod

The representation of a pay period.


## Fields

| Field                                                                                        | Type                                                                                         | Required                                                                                     | Description                                                                                  |
| -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- |
| `start_date`                                                                                 | *T.nilable(::String)*                                                                        | :heavy_minus_sign:                                                                           | The start date, inclusive, of the pay period.                                                |
| `end_date`                                                                                   | *T.nilable(::String)*                                                                        | :heavy_minus_sign:                                                                           | The end date, inclusive, of the pay period.                                                  |
| `pay_schedule_uuid`                                                                          | *T.nilable(::String)*                                                                        | :heavy_minus_sign:                                                                           | A unique identifier of the pay schedule to which the pay period belongs.                     |
| `payroll`                                                                                    | [T.nilable(::OpenApiSDK::Shared::PayPeriodPayroll)](../../models/shared/payperiodpayroll.md) | :heavy_minus_sign:                                                                           | Information about the payroll for the pay period.                                            |