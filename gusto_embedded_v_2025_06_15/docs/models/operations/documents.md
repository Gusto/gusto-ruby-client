# Documents


## Fields

| Field                                                | Type                                                 | Required                                             | Description                                          |
| ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- |
| `document_type`                                      | *::String*                                           | :heavy_check_mark:                                   | The document type                                    |
| `document_title`                                     | *::String*                                           | :heavy_check_mark:                                   | The document title associated with the document type |
| `document_number`                                    | *T.nilable(::String)*                                | :heavy_minus_sign:                                   | The document's document number                       |
| `expiration_date`                                    | *T.nilable(::String)*                                | :heavy_minus_sign:                                   | The document's expiration date                       |
| `issuing_authority`                                  | *::String*                                           | :heavy_check_mark:                                   | The document's issuing authority                     |