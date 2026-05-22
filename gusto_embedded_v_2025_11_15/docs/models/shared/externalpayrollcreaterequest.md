# ExternalPayrollCreateRequest

The request body for creating an external payroll.


## Fields

| Field                                                                        | Type                                                                         | Required                                                                     | Description                                                                  | Example                                                                      |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `check_date`                                                                 | [DateTime](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/DateTime.html) | :heavy_check_mark:                                                           | The check date of the external payroll.                                      | 2022-06-03                                                                   |
| `payment_period_start_date`                                                  | [DateTime](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/DateTime.html) | :heavy_check_mark:                                                           | The start date of the external payroll payment period.                       | 2022-05-15                                                                   |
| `payment_period_end_date`                                                    | [DateTime](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/DateTime.html) | :heavy_check_mark:                                                           | The end date of the external payroll payment period.                         | 2022-05-30                                                                   |