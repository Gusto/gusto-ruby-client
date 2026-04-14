# EmployeeStateTaxInputQuestionFormat


## Fields

| Field                                                                        | Type                                                                         | Required                                                                     | Description                                                                  |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `type`                                                                       | *::String*                                                                   | :heavy_check_mark:                                                           | Describes the type of question - Text, Number, Select, Currency, Date        |
| `options`                                                                    | T::Array<[::GustoEmbedded::Shared::Options](../../models/shared/options.md)> | :heavy_minus_sign:                                                           | For "Select" type questions, the allowed values and display labels.          |