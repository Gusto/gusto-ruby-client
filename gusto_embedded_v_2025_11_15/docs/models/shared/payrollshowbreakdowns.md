# PayrollShowBreakdowns


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `start_date`                                                         | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_minus_sign:                                                   | The start date of the workweek.                                      |
| `end_date`                                                           | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_minus_sign:                                                   | The end date of the workweek.                                        |
| `amount`                                                             | *T.nilable(::String)*                                                | :heavy_minus_sign:                                                   | The dollar amount for this workweek.                                 |