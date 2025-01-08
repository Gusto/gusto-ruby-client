# CompaniesContractors
(*companies_contractors*)

## Overview

### Available Operations

* [list](#list) - Get contractors of a company

## list

Get all contractors, active and inactive, individual and business, for a company.

scope: `contractors:read`

### Example Usage

```ruby
require 'gusto_embedded'


s = ::OpenApiSDK::GustoEmbedded.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    company_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  )
)


req = ::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidContractorsRequest.new(
  company_uuid: "<id>",
)
    
res = s.companies_contractors.list(req)

if ! res.contractor_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                       | Type                                                                                                                                            | Required                                                                                                                                        | Description                                                                                                                                     |
| ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                                       | [::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidContractorsRequest](../../models/operations/getv1companiescompanyuuidcontractorsrequest.md) | :heavy_check_mark:                                                                                                                              | The request object to use for the request.                                                                                                      |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetV1CompaniesCompanyUuidContractorsResponse)](../../models/operations/getv1companiescompanyuuidcontractorsresponse.md)**

