# GetV1TokenInfoResponseBody

Example response


## Fields

| Field                                                                                  | Type                                                                                   | Required                                                                               | Description                                                                            |
| -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| `scope`                                                                                | *::String*                                                                             | :heavy_check_mark:                                                                     | Space delimited string of accessible scopes.                                           |
| `resource`                                                                             | [::GustoEmbedded::Operations::Resource](../../models/operations/resource.md)           | :heavy_check_mark:                                                                     | Information about the token resource.                                                  |
| `resource_owner`                                                                       | [::GustoEmbedded::Operations::ResourceOwner](../../models/operations/resourceowner.md) | :heavy_check_mark:                                                                     | Information about the token owner                                                      |