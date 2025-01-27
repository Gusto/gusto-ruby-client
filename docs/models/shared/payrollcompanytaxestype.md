# PayrollCompanyTaxesType


## Fields

| Field                                           | Type                                            | Required                                        | Description                                     |
| ----------------------------------------------- | ----------------------------------------------- | ----------------------------------------------- | ----------------------------------------------- |
| `name`                                          | *T.nilable(::String)*                           | :heavy_minus_sign:                              | The tax name                                    |
| `employer`                                      | *T.nilable(T::Boolean)*                         | :heavy_minus_sign:                              | Whether this tax is an employer or employee tax |
| `amount`                                        | *T.nilable(::String)*                           | :heavy_minus_sign:                              | The amount of this tax for the payroll          |