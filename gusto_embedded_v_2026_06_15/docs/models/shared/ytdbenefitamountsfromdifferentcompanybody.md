# YtdBenefitAmountsFromDifferentCompanyBody

Year-to-date benefit amounts contributed at a different company for the specified employee.


## Fields

| Field                                                                   | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `benefit_type`                                                          | *::Integer*                                                             | :heavy_check_mark:                                                      | The benefit type supported by Gusto.                                    |
| `tax_year`                                                              | *::Float*                                                               | :heavy_check_mark:                                                      | The tax year for which this amount applies.                             |
| `ytd_employee_deduction_amount`                                         | *T.nilable(::String)*                                                   | :heavy_minus_sign:                                                      | The year-to-date employee deduction made outside the current company.   |
| `ytd_company_contribution_amount`                                       | *T.nilable(::String)*                                                   | :heavy_minus_sign:                                                      | The year-to-date company contribution made outside the current company. |