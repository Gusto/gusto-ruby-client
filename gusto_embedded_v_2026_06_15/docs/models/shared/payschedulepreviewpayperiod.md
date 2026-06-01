# PaySchedulePreviewPayPeriod

A single pay period in a pay schedule preview, with check date, period boundaries, and payroll deadline.


## Fields

| Field                                                                        | Type                                                                         | Required                                                                     | Description                                                                  |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `check_date`                                                                 | [DateTime](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/DateTime.html) | :heavy_check_mark:                                                           | The payment date, "Check date", for the pay period.                          |
| `start_date`                                                                 | [DateTime](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/DateTime.html) | :heavy_check_mark:                                                           | The first day of the pay period.                                             |
| `run_payroll_by`                                                             | [DateTime](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/DateTime.html) | :heavy_check_mark:                                                           | The deadline to run payroll for direct deposit on the check date.            |
| `end_date`                                                                   | [DateTime](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/DateTime.html) | :heavy_check_mark:                                                           | The last day of the pay period.                                              |