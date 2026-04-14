# GetV1CompaniesCompanyIdPaySchedulesPreviewResponseBody

Pay schedule preview


## Fields

| Field                                                                                      | Type                                                                                       | Required                                                                                   | Description                                                                                |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| `pay_periods`                                                                              | T::Array<[::GustoEmbedded::Operations::PayPeriods](../../models/operations/payperiods.md)> | :heavy_minus_sign:                                                                         | A list of pay periods for the previewed pay schedule                                       |
| `holidays`                                                                                 | T::Array<*::String*>                                                                       | :heavy_minus_sign:                                                                         | A list of dates for bank closures                                                          |