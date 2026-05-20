# PartnerManagedCompanyMigrationReadinessResponse


## Fields

| Field                                                                 | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `ready_to_migrate`                                                    | *T.nilable(T::Boolean)*                                               | :heavy_minus_sign:                                                    | Indicates if the company is ready to be migrated.                     |
| `company_uuid`                                                        | *T.nilable(::String)*                                                 | :heavy_minus_sign:                                                    | The company UUID                                                      |
| `errors`                                                              | T::Array<[Models::Shared::Errors](../../models/shared/errors.md)>     | :heavy_minus_sign:                                                    | N/A                                                                   |
| `warnings`                                                            | T::Array<[Models::Shared::Warnings](../../models/shared/warnings.md)> | :heavy_minus_sign:                                                    | N/A                                                                   |