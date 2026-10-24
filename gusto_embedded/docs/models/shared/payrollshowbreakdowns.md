# PayrollShowBreakdowns


## Fields

| Field                                                                        | Type                                                                         | Required                                                                     | Description                                                                  |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `start_date`                                                                 | [DateTime](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/DateTime.html) | :heavy_minus_sign:                                                           | The start date of the workweek.                                              |
| `end_date`                                                                   | [DateTime](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/DateTime.html) | :heavy_minus_sign:                                                           | The end date of the workweek.                                                |
| `hours`                                                                      | *T.nilable(::String)*                                                        | :heavy_minus_sign:                                                           | The number of hours worked during this workweek.                             |