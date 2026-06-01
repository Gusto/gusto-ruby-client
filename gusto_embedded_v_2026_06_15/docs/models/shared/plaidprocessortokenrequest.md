# PlaidProcessorTokenRequest

Request body for creating a verified company bank account from a Plaid processor token.


## Fields

| Field                                                         | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `owner_type`                                                  | [Models::Shared::OwnerType](../../models/shared/ownertype.md) | :heavy_check_mark:                                            | The owner type of the bank account                            |
| `owner_id`                                                    | *::String*                                                    | :heavy_check_mark:                                            | The owner UUID of the bank account                            |
| `processor_token`                                             | *::String*                                                    | :heavy_check_mark:                                            | The Plaid processor token                                     |