# Licensee

The licensed payroll processor


## Fields

| Field                                            | Type                                             | Required                                         | Description                                      |
| ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ | ------------------------------------------------ |
| `name`                                           | *T.nilable(::String)*                            | :heavy_minus_sign:                               | Always the fixed string "Gusto, Zenpayroll Inc." |
| `address`                                        | *T.nilable(::String)*                            | :heavy_minus_sign:                               | Always the fixed string "525 20th St"            |
| `city`                                           | *T.nilable(::String)*                            | :heavy_minus_sign:                               | Always the fixed string "San Francisco"          |
| `state`                                          | *T.nilable(::String)*                            | :heavy_minus_sign:                               | Always the fixed string "CA"                     |
| `postal_code`                                    | *T.nilable(::String)*                            | :heavy_minus_sign:                               | Always the fixed string "94107"                  |
| `phone_number`                                   | *T.nilable(::String)*                            | :heavy_minus_sign:                               | Always the fixed string "4157778888"             |