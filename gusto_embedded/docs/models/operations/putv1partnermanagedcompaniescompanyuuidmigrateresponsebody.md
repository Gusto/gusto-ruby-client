# PutV1PartnerManagedCompaniesCompanyUuidMigrateResponseBody

Example response


## Fields

| Field                                                                                                 | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                        | *T.nilable(::String)*                                                                                 | :heavy_minus_sign:                                                                                    | The company UUID                                                                                      |
| `migration_status`                                                                                    | [T.nilable(::GustoEmbedded::Operations::MigrationStatus)](../../models/operations/migrationstatus.md) | :heavy_minus_sign:                                                                                    | The migration status. 'success' is the only valid return value.                                       |