# ContributionExclusion

The representation of a contribution exclusion for a company benefit.


## Fields

| Field                                                        | Type                                                         | Required                                                     | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `contribution_uuid`                                          | *::String*                                                   | :heavy_check_mark:                                           | The UUID of the contribution type.                           |
| `contribution_type`                                          | *::String*                                                   | :heavy_check_mark:                                           | The name of the contribution type.                           |
| `excluded`                                                   | *T::Boolean*                                                 | :heavy_check_mark:                                           | Whether this contribution type is excluded from the benefit. |