# PostV1PlaidProcessorTokenRequestBody


## Fields

| Field                                                                          | Type                                                                           | Required                                                                       | Description                                                                    |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| `owner_type`                                                                   | [::GustoEmbedded::Operations::OwnerType](../../models/operations/ownertype.md) | :heavy_check_mark:                                                             | The owner type of the bank account                                             |
| `owner_id`                                                                     | *::String*                                                                     | :heavy_check_mark:                                                             | The owner UUID of the bank account                                             |
| `processor_token`                                                              | *::String*                                                                     | :heavy_check_mark:                                                             | The Plaid processor token                                                      |