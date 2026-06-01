# PayrollBlockersErrorErrors


## Fields

| Field                                                                  | Type                                                                   | Required                                                               | Description                                                            |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `error_key`                                                            | *T.nilable(::String)*                                                  | :heavy_minus_sign:                                                     | The string "base"                                                      |
| `category`                                                             | *T.nilable(::String)*                                                  | :heavy_minus_sign:                                                     | The string "payroll_blocker"                                           |
| `message`                                                              | *T.nilable(::String)*                                                  | :heavy_minus_sign:                                                     | Human readable description of the payroll blocker                      |
| `metadata`                                                             | [T.nilable(Models::Errors::Metadata)](../../models/errors/metadata.md) | :heavy_minus_sign:                                                     | N/A                                                                    |