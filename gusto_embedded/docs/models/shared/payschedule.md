# PaySchedule


## Fields

| Field                                                   | Type                                                    | Required                                                | Description                                             |
| ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- |
| `uuid`                                                  | *T.nilable(::String)*                                   | :heavy_minus_sign:                                      | UUID of the pay schedule.                               |
| `frequency`                                             | *T.nilable(::String)*                                   | :heavy_minus_sign:                                      | Human-friendly pay frequency (e.g. "Every other week"). |
| `custom_name`                                           | *T.nilable(::String)*                                   | :heavy_minus_sign:                                      | Custom name for the pay schedule, when set.             |