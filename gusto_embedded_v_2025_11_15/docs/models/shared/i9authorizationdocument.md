# I9AuthorizationDocument

An employee's I-9 verification document


## Fields

| Field                                     | Type                                      | Required                                  | Description                               |
| ----------------------------------------- | ----------------------------------------- | ----------------------------------------- | ----------------------------------------- |
| `uuid`                                    | *::String*                                | :heavy_check_mark:                        | The UUID of the I-9 verification document |
| `document_type`                           | *::String*                                | :heavy_check_mark:                        | The document's document type              |
| `document_title`                          | *::String*                                | :heavy_check_mark:                        | The document's document title             |
| `expiration_date`                         | *T.nilable(::String)*                     | :heavy_minus_sign:                        | The document's expiration date            |
| `issuing_authority`                       | *::String*                                | :heavy_check_mark:                        | The document's issuing authority          |