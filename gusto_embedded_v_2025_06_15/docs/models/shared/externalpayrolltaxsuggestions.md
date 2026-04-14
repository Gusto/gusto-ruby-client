# ExternalPayrollTaxSuggestions

The representation of an external payroll with minimal information.


## Fields

| Field                                                                                      | Type                                                                                       | Required                                                                                   | Description                                                                                |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| `employee_uuid`                                                                            | *T.nilable(::String)*                                                                      | :heavy_minus_sign:                                                                         | The UUID of the employee.                                                                  |
| `tax_suggestions`                                                                          | T::Array<[::GustoEmbedded::Shared::TaxSuggestions](../../models/shared/taxsuggestions.md)> | :heavy_minus_sign:                                                                         | Possible tax liabilities selections.                                                       |