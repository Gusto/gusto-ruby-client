# Exclusions


## Fields

| Field                                       | Type                                        | Required                                    | Description                                 |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| `external_id`                               | *T.nilable(::String)*                       | :heavy_minus_sign:                          | The external ID of the excluded item(s).    |
| `category`                                  | *T.nilable(::String)*                       | :heavy_minus_sign:                          | The exclusion category.                     |
| `message`                                   | *T.nilable(::String)*                       | :heavy_minus_sign:                          | Human-readable explanation for exclusion.   |
| `item_count`                                | *T.nilable(::Integer)*                      | :heavy_minus_sign:                          | Number of items affected by this exclusion. |