# PaymentConfigs

Example response


## Fields

| Field                                    | Type                                     | Required                                 | Description                              |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| `company_uuid`                           | *T.nilable(::String)*                    | :heavy_minus_sign:                       | Company uuid                             |
| `partner_uuid`                           | *T.nilable(::String)*                    | :heavy_minus_sign:                       | Partner uuid                             |
| `fast_payment_limit`                     | *T.nilable(::String)*                    | :heavy_minus_sign:                       | Payment limit for 1-day or 2-day payroll |
| `payment_speed`                          | *T.nilable(::String)*                    | :heavy_minus_sign:                       | Payment speed for 1-day, 2-day, 4-day    |