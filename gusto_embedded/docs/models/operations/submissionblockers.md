# SubmissionBlockers


## Fields

| Field                                                                       | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `blocker_type`                                                              | *T.nilable(::String)*                                                       | :heavy_minus_sign:                                                          | The type of blocker that is blocking the payment submission                 |
| `selected_option`                                                           | *T.nilable(::String)*                                                       | :heavy_minus_sign:                                                          | The unblock option selected to resolve the submission blocker               |
| `message`                                                                   | *T.nilable(::String)*                                                       | :heavy_minus_sign:                                                          | Optional message related to the blocker                                     |
| `options`                                                                   | T::Array<[Models::Operations::Options](../../models/operations/options.md)> | :heavy_minus_sign:                                                          | Optional array of additional options for the blocker                        |