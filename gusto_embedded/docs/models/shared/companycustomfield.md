# CompanyCustomField

A custom field on a company


## Fields

| Field                                                                              | Type                                                                               | Required                                                                           | Description                                                                        |
| ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| `uuid`                                                                             | *::String*                                                                         | :heavy_check_mark:                                                                 | UUID of the company custom field                                                   |
| `name`                                                                             | *::String*                                                                         | :heavy_check_mark:                                                                 | Name of the company custom field                                                   |
| `type`                                                                             | [::GustoEmbedded::Shared::CustomFieldType](../../models/shared/customfieldtype.md) | :heavy_check_mark:                                                                 | Input type for the custom field.                                                   |
| `description`                                                                      | *T.nilable(::String)*                                                              | :heavy_minus_sign:                                                                 | Description of the company custom field                                            |
| `selection_options`                                                                | T::Array<*::String*>                                                               | :heavy_minus_sign:                                                                 | An array of options for fields of type radio. Otherwise, null.                     |