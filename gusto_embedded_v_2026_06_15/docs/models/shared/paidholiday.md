# PaidHoliday

A paid holiday derived from the company's holiday pay policy


## Fields

| Field                                               | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `holiday_key`                                       | *T.nilable(::String)*                               | :heavy_minus_sign:                                  | The holiday's identifier (null for custom holidays) |
| `holiday_name`                                      | *T.nilable(::String)*                               | :heavy_minus_sign:                                  | The holiday's official name                         |
| `start_date`                                        | *T.nilable(::String)*                               | :heavy_minus_sign:                                  | The holiday's start date (YYYY-MM-DD)               |
| `end_date`                                          | *T.nilable(::String)*                               | :heavy_minus_sign:                                  | The holiday's end date (YYYY-MM-DD)                 |