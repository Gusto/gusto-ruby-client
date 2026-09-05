# Reports

## Overview

### Available Operations

* [post_v1_bulk_reports](#post_v1_bulk_reports) - Create a bulk report batch
* [get_v1_bulk_reports_request_uuid](#get_v1_bulk_reports_request_uuid) - Get a bulk report batch
* [post_v1_companies_company_id_reports_employees_annual_fica_wage](#post_v1_companies_company_id_reports_employees_annual_fica_wage) - Create an employees annual FICA wage report
* [create_custom](#create_custom) - Create a custom report
* [post_payrolls_payroll_uuid_reports_general_ledger](#post_payrolls_payroll_uuid_reports_general_ledger) - Create a general ledger report
* [get_reports_request_uuid](#get_reports_request_uuid) - Get a report
* [get_template](#get_template) - Get a report template

## post_v1_bulk_reports

Triggers asynchronous generation of up to 25 reports across companies the partner is mapped to. Each `batch` item is a `custom_report` (same parameters as [create a custom report](https://docs.gusto.com/embedded-payroll/reference/post-companies-company_uuid-reports)) or a `general_ledger` report (same parameters as [create a general ledger report](https://docs.gusto.com/embedded-payroll/reference/post-payrolls-payroll_uuid-reports-general_ledger)), keyed by `company_uuid` and `report_type`. Items are validated synchronously; if any is invalid, the entire batch is rejected.

Poll the [bulk report GET endpoint](https://docs.gusto.com/embedded-payroll/reference/get-v1-bulk_reports-request_uuid) with the returned `uuid` for status and the report URL, which is valid for 10 minutes.

📘 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `company_reports:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-bulk_reports" method="post" path="/v1/bulk_reports" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.reports.post_v1_bulk_reports(security: Models::Operations::PostV1BulkReportsSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
), bulk_report_body: Models::Shared::BulkReportBody.new(
  batch: [
    Models::Shared::BulkReportCustomReportItem.new(
      company_uuid: '12345678-abcd-ef12-3456-7890abcdef12',
      report_type: Models::Shared::ReportType::CUSTOM_REPORT,
      columns: [
        Models::Shared::Columns::EMPLOYEE_FIRST_NAME,
      ],
      groupings: [
        Models::Shared::Groupings::EMPLOYEE,
      ],
      file_type: Models::Shared::FileType::CSV,
      custom_name: 'Q1 Payroll Export',
      with_totals: false,
      date_filter_type: Models::Shared::DateFilterType::CHECK_DATE,
      start_date: Date.parse('2026-01-01'),
      end_date: Date.parse('2026-03-31'),
      payment_method: Models::Shared::PaymentMethod::CHECK,
      employment_type: Models::Shared::EmploymentType::EXEMPT,
      employment_status: Models::Shared::EmploymentStatus::ACTIVE_FULL_TIME
    ),
    Models::Shared::BulkReportGeneralLedgerItem.new(
      company_uuid: '12345678-abcd-ef12-3456-7890abcdef12',
      report_type: Models::Shared::BulkReportGeneralLedgerItemReportType::GENERAL_LEDGER,
      payroll_uuid: '7b1d0df1-6403-4a06-8768-c1dd7d24d27a',
      aggregation: Models::Shared::Aggregation::DEFAULT
    ),
  ]
), x_gusto_api_version: Models::Operations::PostV1BulkReportsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.create_bulk_report.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Example                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `security`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | [Models::Operations::PostV1BulkReportsSecurity](../../models/operations/postv1bulkreportssecurity.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | The security requirements to use for the request.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| `bulk_report_body`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | [Models::Shared::BulkReportBody](../../models/shared/bulkreportbody.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | {<br/>"batch": [<br/>{<br/>"company_uuid": "12345678-abcd-ef12-3456-7890abcdef12",<br/>"report_type": "custom_report",<br/>"columns": [<br/>"employee_first_name"<br/>],<br/>"groupings": [<br/>"employee"<br/>],<br/>"file_type": "csv",<br/>"custom_name": "Q1 Payroll Export",<br/>"with_totals": false,<br/>"start_date": "2026-01-01",<br/>"end_date": "2026-03-31",<br/>"date_filter_type": "check_date",<br/>"payment_method": "check",<br/>"employment_type": "exempt",<br/>"employment_status": "active_full_time"<br/>},<br/>{<br/>"company_uuid": "12345678-abcd-ef12-3456-7890abcdef12",<br/>"report_type": "general_ledger",<br/>"payroll_uuid": "7b1d0df1-6403-4a06-8768-c1dd7d24d27a",<br/>"aggregation": "default"<br/>}<br/>]<br/>} |
| `x_gusto_api_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | [T.nilable(Models::Operations::PostV1BulkReportsHeaderXGustoAPIVersion)](../../models/operations/postv1bulkreportsheaderxgustoapiversion.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used.                                                                                                                                                                                                                                                                                                                                                                                                         |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |

### Response

**[T.nilable(Models::Operations::PostV1BulkReportsResponse)](../../models/operations/postv1bulkreportsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_v1_bulk_reports_request_uuid

Get a bulk report batch's status and results given the `request_uuid`. While in progress, only batch metadata is returned; once complete, it also includes a signed `report_url` (a zip of all generated reports, valid for 10 minutes) and a per-company breakdown.

Reports containing PHI are inaccessible with `company_reports:read:tier_2_only` data scope.

📘 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `company_reports:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-bulk_reports-request_uuid" method="get" path="/v1/bulk_reports/{request_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new
res = s.reports.get_v1_bulk_reports_request_uuid(security: Models::Operations::GetV1BulkReportsRequestUuidSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
), request_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1BulkReportsRequestUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.bulk_report.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `security`                                                                                                                                                                                                                   | [Models::Operations::GetV1BulkReportsRequestUuidSecurity](../../models/operations/getv1bulkreportsrequestuuidsecurity.md)                                                                                                    | :heavy_check_mark:                                                                                                                                                                                                           | The security requirements to use for the request.                                                                                                                                                                            |
| `request_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the bulk report batch.                                                                                                                                                                                           |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1BulkReportsRequestUuidHeaderXGustoAPIVersion)](../../models/operations/getv1bulkreportsrequestuuidheaderxgustoapiversion.md)                                                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1BulkReportsRequestUuidResponse)](../../models/operations/getv1bulkreportsrequestuuidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## post_v1_companies_company_id_reports_employees_annual_fica_wage

Generates a report containing annual FICA (Federal Insurance Contributions Act) wage data for all employees in a company over a specified year range.

This report provides detailed wage information subject to Social Security and Medicare taxes, useful for benefits integrations that need to verify employee earnings for compliance and benefit calculations.

The report is generated asynchronously. After making this request, you will receive a `request_uuid` which can be used to poll the [Get a report](ref:get-v1-reports-request_uuid) endpoint to check the status and retrieve the report when complete.

scope: `company_reports:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-v1-companies-company_id-reports-employees_annual_fica_wage" method="post" path="/v1/companies/{company_id}/reports/employees_annual_fica_wage" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.reports.post_v1_companies_company_id_reports_employees_annual_fica_wage(company_id: '<id>', request_body: Models::Operations::PostV1CompaniesCompanyIdReportsEmployeesAnnualFicaWageRequestBody.new(
  start_year: 2023,
  end_year: 2024
), x_gusto_api_version: Models::Operations::PostV1CompaniesCompanyIdReportsEmployeesAnnualFicaWageHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.employees_annual_fica_wage_report_acceptance.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_id`                                                                                                                                                                                                                 | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `request_body`                                                                                                                                                                                                               | [Models::Operations::PostV1CompaniesCompanyIdReportsEmployeesAnnualFicaWageRequestBody](../../models/operations/postv1companiescompanyidreportsemployeesannualficawagerequestbody.md)                                        | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostV1CompaniesCompanyIdReportsEmployeesAnnualFicaWageHeaderXGustoAPIVersion)](../../models/operations/postv1companiescompanyidreportsemployeesannualficawageheaderxgustoapiversion.md)       | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostV1CompaniesCompanyIdReportsEmployeesAnnualFicaWageResponse)](../../models/operations/postv1companiescompanyidreportsemployeesannualficawageresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## create_custom

Create a custom report for a company. This endpoint initiates creating a custom report with custom columns, groupings, and filters. The `request_uuid` in the response can then be used to poll for the status and report URL upon completion using the [report GET endpoint](https://docs.gusto.com/embedded-payroll/reference/get-reports-request_uuid). This URL is valid for 10 minutes.

scope: `company_reports:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-companies-company_uuid-reports" method="post" path="/v1/companies/{company_uuid}/reports" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.reports.create_custom(company_uuid: '<id>', create_report_body: Models::Shared::CreateReportBody.new(
  columns: [
    Models::Shared::CreateReportBodyColumns::TOTAL_TIME_OFF_EARNINGS,
  ],
  file_type: Models::Shared::CreateReportBodyFileType::JSON,
  start_date: Date.parse('2024-01-01'),
  end_date: Date.parse('2024-04-01'),
  dismissed_start_date: Date.parse('2024-01-01'),
  dismissed_end_date: Date.parse('2024-04-01')
), x_gusto_api_version: Models::Operations::PostCompaniesCompanyUuidReportsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.create_report.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `create_report_body`                                                                                                                                                                                                         | [Models::Shared::CreateReportBody](../../models/shared/createreportbody.md)                                                                                                                                                  | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostCompaniesCompanyUuidReportsHeaderXGustoAPIVersion)](../../models/operations/postcompaniescompanyuuidreportsheaderxgustoapiversion.md)                                                     | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostCompaniesCompanyUuidReportsResponse)](../../models/operations/postcompaniescompanyuuidreportsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## post_payrolls_payroll_uuid_reports_general_ledger

Create a general ledger report for a payroll. The report can be aggregated by different dimensions such as job or department.

Use the `request_uuid` in the response with the [report GET endpoint](../reference/get-reports-request_uuid) to poll for the status and report URL upon completion. The retrieved report will be generated in a JSON format.

scope: `company_reports:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="post-payrolls-payroll_uuid-reports-general_ledger" method="post" path="/v1/payrolls/{payroll_uuid}/reports/general_ledger" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.reports.post_payrolls_payroll_uuid_reports_general_ledger(payroll_uuid: '<id>', general_ledger_report_body: Models::Shared::GeneralLedgerReportBody.new(
  aggregation: Models::Shared::GeneralLedgerReportBodyAggregation::DEFAULT
), x_gusto_api_version: Models::Operations::PostPayrollsPayrollUuidReportsGeneralLedgerHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.general_ledger_report.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `payroll_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the payroll                                                                                                                                                                                                      |
| `general_ledger_report_body`                                                                                                                                                                                                 | [Models::Shared::GeneralLedgerReportBody](../../models/shared/generalledgerreportbody.md)                                                                                                                                    | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PostPayrollsPayrollUuidReportsGeneralLedgerHeaderXGustoAPIVersion)](../../models/operations/postpayrollspayrolluuidreportsgeneralledgerheaderxgustoapiversion.md)                             | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PostPayrollsPayrollUuidReportsGeneralLedgerResponse)](../../models/operations/postpayrollspayrolluuidreportsgeneralledgerresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## get_reports_request_uuid

Get a company's report given the `request_uuid`. The response will include the report request's status and, if complete, the report URL.

Reports containing PHI are inaccessible with `company_reports:read:tier_2_only` data scope

scope: `company_reports:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-reports-request_uuid" method="get" path="/v1/reports/{request_uuid}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.reports.get_reports_request_uuid(request_uuid: '<id>', x_gusto_api_version: Models::Operations::GetReportsRequestUuidHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.report.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the request to generate a document. Generate document endpoints return request_uuids to be used with the GET generated document endpoint.                                                                        |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetReportsRequestUuidHeaderXGustoAPIVersion)](../../models/operations/getreportsrequestuuidheaderxgustoapiversion.md)                                                                         | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetReportsRequestUuidResponse)](../../models/operations/getreportsrequestuuidresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## get_template

Get a company's report template. The only supported report type is `payroll_journal`. The resulting columns and groupings from this endpoint can be used as a guidance to create the report using the POST create report endpoint.

scope: `company_reports:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-companies-company_uuid-report-templates-report_type" method="get" path="/v1/companies/{company_uuid}/report_templates/{report_type}" -->
```ruby
require 'gusto_embedded_client'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.reports.get_template(company_uuid: '<id>', report_type: '<value>', x_gusto_api_version: Models::Operations::GetCompaniesCompanyUuidReportTemplatesReportTypeHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_06_MINUS_15)

unless res.report_template.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `report_type`                                                                                                                                                                                                                | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The report type                                                                                                                                                                                                              |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetCompaniesCompanyUuidReportTemplatesReportTypeHeaderXGustoAPIVersion)](../../models/operations/getcompaniescompanyuuidreporttemplatesreporttypeheaderxgustoapiversion.md)                   | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetCompaniesCompanyUuidReportTemplatesReportTypeResponse)](../../models/operations/getcompaniescompanyuuidreporttemplatesreporttyperesponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |