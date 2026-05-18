# WireInRequestUpdateRequestBody


## Fields

| Field                             | Type                              | Required                          | Description                       | Example                           |
| --------------------------------- | --------------------------------- | --------------------------------- | --------------------------------- | --------------------------------- |
| `date_sent`                       | *::String*                        | :heavy_check_mark:                | The date the wire was sent        | 2024-06-10                        |
| `bank_name`                       | *::String*                        | :heavy_check_mark:                | Name of the bank sending the wire | Chase                             |
| `amount_sent`                     | *::String*                        | :heavy_check_mark:                | Amount of money sent              | 314500.00                         |
| `additional_notes`                | *T.nilable(::String)*             | :heavy_minus_sign:                | Additional notes                  | Wire for 2024-06-15 payroll.      |