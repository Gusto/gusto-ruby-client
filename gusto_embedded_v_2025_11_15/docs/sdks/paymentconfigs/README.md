# PaymentConfigs

## Overview

### Available Operations

* [get](#get) - Get a company's payment configs
* [update](#update) - Update a company's payment configs

## get

Get payment speed configurations for the company: payment speed (1-day, 2-day, or 4-day ACH), fast payment limit, partner-owned disbursement setting, and earned fast ACH blockers when applicable. 1-day is only available to partners that opt in.

### Related guides
- [Payroll Processing Speeds](doc:2-day-vs-4-day)

scope: `company_payment_configs:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-v1-company-payment-configs" method="get" path="/v1/companies/{company_uuid}/payment_configs" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.payment_configs.get(company_uuid: '<id>', x_gusto_api_version: Models::Operations::GetV1CompanyPaymentConfigsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.payment_configs.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::GetV1CompanyPaymentConfigsHeaderXGustoAPIVersion)](../../models/operations/getv1companypaymentconfigsheaderxgustoapiversion.md)                                                               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::GetV1CompanyPaymentConfigsResponse)](../../models/operations/getv1companypaymentconfigsresponse.md)**

### Errors

| Error Type                          | Status Code                         | Content Type                        |
| ----------------------------------- | ----------------------------------- | ----------------------------------- |
| Models::Errors::NotFoundErrorObject | 404                                 | application/json                    |
| Errors::APIError                    | 4XX, 5XX                            | \*/\*                               |

## update

Update payment speed, fast payment limit, and/or partner-owned disbursement for a company.

At least one of `payment_speed`, `fast_payment_limit`, or `partner_owned_disbursement` is required.
1-day payment speed is only applicable to partners that opt in. 1-day is not allowed when AutoPilot is enabled.

### Related guides
- [Payroll Processing Speeds](doc:2-day-vs-4-day)

scope: `company_payment_configs:write`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="put-v1-company-payment-configs" method="put" path="/v1/companies/{company_uuid}/payment_configs" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new(
  security: Models::Shared::Security.new(
    company_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
  )
)
res = s.payment_configs.update(company_uuid: '<id>', body: Models::Shared::PaymentConfigsUpdateRequest.new, x_gusto_api_version: Models::Operations::PutV1CompanyPaymentConfigsHeaderXGustoAPIVersion::TWO_THOUSAND_AND_TWENTY_FIVE_MINUS_11_MINUS_15)

unless res.payment_configs.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `company_uuid`                                                                                                                                                                                                               | *::String*                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                           | The UUID of the company                                                                                                                                                                                                      |
| `body`                                                                                                                                                                                                                       | [Models::Shared::PaymentConfigsUpdateRequest](../../models/shared/paymentconfigsupdaterequest.md)                                                                                                                            | :heavy_check_mark:                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                          |
| `x_gusto_api_version`                                                                                                                                                                                                        | [T.nilable(Models::Operations::PutV1CompanyPaymentConfigsHeaderXGustoAPIVersion)](../../models/operations/putv1companypaymentconfigsheaderxgustoapiversion.md)                                                               | :heavy_minus_sign:                                                                                                                                                                                                           | Determines the date-based API version associated with your API call. If none is provided, your application's [minimum API version](https://docs.gusto.com/embedded-payroll/docs/api-versioning#minimum-api-version) is used. |

### Response

**[T.nilable(Models::Operations::PutV1CompanyPaymentConfigsResponse)](../../models/operations/putv1companypaymentconfigsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::NotFoundErrorObject      | 404                                      | application/json                         |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |