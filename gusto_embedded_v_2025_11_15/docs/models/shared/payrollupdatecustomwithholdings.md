# PayrollUpdateCustomWithholdings

Optional per-payroll one-time custom withholdings for federal and/or state income tax.
When provided, the supplied override takes precedence over any persistent withholding schedule for this run.
This field is in limited release; if your application does not have access, requests including it are silently ignored.



## Fields

| Field                                                                                          | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `federal`                                                                                      | [T.nilable(Models::Shared::PayrollUpdateFederal)](../../models/shared/payrollupdatefederal.md) | :heavy_minus_sign:                                                                             | Federal one-time custom withholding override.                                                  |
| `state`                                                                                        | T::Array<[Models::Shared::PayrollUpdateState](../../models/shared/payrollupdatestate.md)>      | :heavy_minus_sign:                                                                             | State one-time custom withholding overrides, one entry per state field.                        |