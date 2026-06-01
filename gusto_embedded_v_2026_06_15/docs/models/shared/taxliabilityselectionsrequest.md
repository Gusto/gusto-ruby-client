# TaxLiabilitySelectionsRequest

The request body for updating tax liability selections.


## Fields

| Field                                                                                       | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `liability_selections`                                                                      | T::Array<[Models::Shared::LiabilitySelections](../../models/shared/liabilityselections.md)> | :heavy_check_mark:                                                                          | Tax liability selections to record for the company's external payrolls.                     |