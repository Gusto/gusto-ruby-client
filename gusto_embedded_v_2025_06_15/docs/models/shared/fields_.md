# Fields


## Fields

| Field                                          | Type                                           | Required                                       | Description                                    |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| `key`                                          | *T.nilable(::String)*                          | :heavy_minus_sign:                             | Unique identifier of the field                 |
| `value`                                        | *T.nilable(::String)*                          | :heavy_minus_sign:                             | Auto-filled value of the field                 |
| `x`                                            | *T.nilable(::Integer)*                         | :heavy_minus_sign:                             | X-coordinate location of the field on the page |
| `y`                                            | *T.nilable(::Integer)*                         | :heavy_minus_sign:                             | Y-coordinate location of the field on the page |
| `width`                                        | *T.nilable(::Integer)*                         | :heavy_minus_sign:                             | Width of the field                             |
| `height`                                       | *T.nilable(::Integer)*                         | :heavy_minus_sign:                             | Height of the field                            |
| `page_number`                                  | *T.nilable(::Integer)*                         | :heavy_minus_sign:                             | Page number of the field                       |
| `data_type`                                    | *T.nilable(::String)*                          | :heavy_minus_sign:                             | The field's data type                          |
| `required`                                     | *T.nilable(T::Boolean)*                        | :heavy_minus_sign:                             | Whether the field is required                  |