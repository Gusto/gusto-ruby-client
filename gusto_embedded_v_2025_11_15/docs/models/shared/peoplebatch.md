# PeopleBatch

A batch for bulk people creation.


## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `uuid`                                                                        | *::String*                                                                    | :heavy_check_mark:                                                            | The unique identifier of the people batch.                                    |
| `idempotency_key`                                                             | *::String*                                                                    | :heavy_check_mark:                                                            | The idempotency key provided when creating the batch.                         |
| `status`                                                                      | [Models::Shared::PeopleBatchStatus](../../models/shared/peoplebatchstatus.md) | :heavy_check_mark:                                                            | The current status of the batch processing.                                   |
| `batch_action`                                                                | *::String*                                                                    | :heavy_check_mark:                                                            | The action being performed on the batch.                                      |