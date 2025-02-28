# PutV1ContractorDocumentSignRequestBody


## Fields

| Field                                                                               | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `fields_`                                                                           | T::Array<[::GustoEmbedded::Operations::Fields](../../models/operations/fields_.md)> | :heavy_check_mark:                                                                  | List of fields and the values they will be set to.                                  |
| `agree`                                                                             | *T::Boolean*                                                                        | :heavy_check_mark:                                                                  | Whether you agree to sign electronically                                            |
| `signed_by_ip_address`                                                              | *::String*                                                                          | :heavy_check_mark:                                                                  | The IP address of the signatory who signed the form.                                |