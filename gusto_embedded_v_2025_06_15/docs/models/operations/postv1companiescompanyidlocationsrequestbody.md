# PostV1CompaniesCompanyIdLocationsRequestBody

Create a company location.


## Fields

| Field                                                      | Type                                                       | Required                                                   | Description                                                |
| ---------------------------------------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------- |
| `phone_number`                                             | *::String*                                                 | :heavy_check_mark:                                         | N/A                                                        |
| `street_1`                                                 | *::String*                                                 | :heavy_check_mark:                                         | N/A                                                        |
| `street_2`                                                 | *T.nilable(::String)*                                      | :heavy_minus_sign:                                         | N/A                                                        |
| `city`                                                     | *::String*                                                 | :heavy_check_mark:                                         | N/A                                                        |
| `state`                                                    | *::String*                                                 | :heavy_check_mark:                                         | N/A                                                        |
| `zip`                                                      | *::String*                                                 | :heavy_check_mark:                                         | N/A                                                        |
| `mailing_address`                                          | *T.nilable(T::Boolean)*                                    | :heavy_minus_sign:                                         | Specify if this location is the company's mailing address. |
| `filing_address`                                           | *T.nilable(T::Boolean)*                                    | :heavy_minus_sign:                                         | Specify if this location is the company's filing address.  |