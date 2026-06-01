# EarningType

The representation of an earning type in Gusto.


## Fields

| Field                               | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `name`                              | *T.nilable(::String)*               | :heavy_minus_sign:                  | The name of the earning type.       |
| `uuid`                              | *::String*                          | :heavy_check_mark:                  | The ID of the earning type.         |
| `active`                            | *T.nilable(T::Boolean)*             | :heavy_minus_sign:                  | Whether the earning type is active. |