# Report

Example response


## Fields

| Field                                                                                 | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request_uuid`                                                                        | *T.nilable(::String)*                                                                 | :heavy_minus_sign:                                                                    | A unique identifier of the report request                                             |
| `status`                                                                              | *T.nilable(::String)*                                                                 | :heavy_minus_sign:                                                                    | Current status of the report, possible values are 'succeeded', 'pending', or 'failed' |
| `report_urls`                                                                         | T::Array<*::String*>                                                                  | :heavy_minus_sign:                                                                    | The array of urls to access the report                                                |