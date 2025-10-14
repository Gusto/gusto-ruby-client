# Admin

The representation of an admin user in Gusto.


## Fields

| Field                                      | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `uuid`                                     | *::String*                                 | :heavy_check_mark:                         | The unique id of the admin.                |
| `email`                                    | *T.nilable(::String)*                      | :heavy_minus_sign:                         | The email of the admin for Gusto's system. |
| `first_name`                               | *T.nilable(::String)*                      | :heavy_minus_sign:                         | The first name of the admin.               |
| `last_name`                                | *T.nilable(::String)*                      | :heavy_minus_sign:                         | The last name of the admin.                |