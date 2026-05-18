# PartnerManagedCompanyMigrateResponse


## Fields

| Field                                                                                | Type                                                                                 | Required                                                                             | Description                                                                          |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ |
| `company_uuid`                                                                       | *T.nilable(::String)*                                                                | :heavy_minus_sign:                                                                   | The company UUID                                                                     |
| `migration_status`                                                                   | [T.nilable(Models::Shared::MigrationStatus)](../../models/shared/migrationstatus.md) | :heavy_minus_sign:                                                                   | The migration status. Always returns `success` for a successful migration.           |