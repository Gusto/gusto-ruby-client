# CompanyAttachment

The company attachment


## Fields

| Field                                                                           | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `uuid`                                                                          | *T.nilable(::String)*                                                           | :heavy_minus_sign:                                                              | UUID of the company attachment                                                  |
| `name`                                                                          | *T.nilable(::String)*                                                           | :heavy_minus_sign:                                                              | name of the file uploaded                                                       |
| `category`                                                                      | [T.nilable(::GustoEmbedded::Shared::Category)](../../models/shared/category.md) | :heavy_minus_sign:                                                              | The category of the company attachment                                          |
| `upload_time`                                                                   | *T.nilable(::String)*                                                           | :heavy_minus_sign:                                                              | The ISO 8601 timestamp of when an attachment was uploaded                       |