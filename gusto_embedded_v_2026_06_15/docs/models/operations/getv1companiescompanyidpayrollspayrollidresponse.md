# GetV1CompaniesCompanyIdPayrollsPayrollIdResponse


## Fields

| Field                                                                        | Type                                                                         | Required                                                                     | Description                                                                  |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `content_type`                                                               | *::String*                                                                   | :heavy_check_mark:                                                           | HTTP response content type for this operation                                |
| `status_code`                                                                | *::Integer*                                                                  | :heavy_check_mark:                                                           | HTTP response status code for this operation                                 |
| `raw_response`                                                               | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response)  | :heavy_check_mark:                                                           | Raw HTTP response; suitable for custom response parsing                      |
| `payroll_show`                                                               | [T.nilable(Models::Shared::PayrollShow)](../../models/shared/payrollshow.md) | :heavy_minus_sign:                                                           | successful with wait_for_reverse_wire credit blocker                         |