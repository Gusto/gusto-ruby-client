# PostV1CompaniesCompanyIdReportsEmployeesAnnualFicaWageResponseBody

accepted


## Fields

| Field                                                                   | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `request_uuid`                                                          | *::String*                                                              | :heavy_check_mark:                                                      | The UUID of the report request. Use this to poll for report completion. |
| `company_uuid`                                                          | *::String*                                                              | :heavy_check_mark:                                                      | The UUID of the company                                                 |
| `start_year`                                                            | *::Integer*                                                             | :heavy_check_mark:                                                      | The start year for the report                                           |
| `end_year`                                                              | *::Integer*                                                             | :heavy_check_mark:                                                      | The end year for the report                                             |