# ContributionExclusion

The representation of a contribution exclusion for a company benefit.


## Fields

| Field                                                        | Type                                                         | Required                                                     | Description                                                  | Example                                                      |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `contribution_uuid`                                          | *::String*                                                   | :heavy_check_mark:                                           | The UUID of the contribution type.                           | 082dfd3e-5b55-11f0-bb42-ab7136ba04e2                         |
| `contribution_type`                                          | *::String*                                                   | :heavy_check_mark:                                           | The name of the contribution type.                           | Bonus                                                        |
| `excluded`                                                   | *T::Boolean*                                                 | :heavy_check_mark:                                           | Whether this contribution type is excluded from the benefit. |                                                              |