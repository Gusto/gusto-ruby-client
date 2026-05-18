# Compensations

The available company-wide compensation rates for the company.


## Fields

| Field                                                                                     | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `hourly`                                                                                  | T::Array<[Models::Shared::Hourly](../../models/shared/hourly.md)>                         | :heavy_minus_sign:                                                                        | The available hourly compensation rates for the company.                                  |
| `fixed`                                                                                   | T::Array<[Models::Shared::Fixed](../../models/shared/fixed.md)>                           | :heavy_minus_sign:                                                                        | The available fixed compensation rates for the company.                                   |
| `paid_time_off`                                                                           | T::Array<[Models::Shared::CompanyPaidTimeOff](../../models/shared/companypaidtimeoff.md)> | :heavy_minus_sign:                                                                        | The available types of paid time off for the company.                                     |