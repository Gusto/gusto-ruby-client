# Invoices
(*invoices*)

## Overview

### Available Operations

* [get](#get) - Retrieve invoicing data for companies

## get

Retrieve data for active companies used to calculate invoices for Gusto Embedded Payroll. A company is considered active for an invoice period if they are an active partner managed company, have run payroll or created contractor payments since becoming a partner managed company, and are not suspended at any point during the invoice period.  This endpoint forces pagination, with 100 results returned at a time. You can learn more about our pagination here: [pagination guide](https://docs.gusto.com/embedded-payroll/docs/pagination) 

> 📘 System Access Authentication
>
> This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `invoices:read`

### Example Usage

```ruby
require 'gusto'


s = ::GustoEmbedded::Client.new


req = ::GustoEmbedded::Operations::GetInvoicesInvoicePeriodRequest.new(
  invoice_period: "2020-01",
)
    
res = s.invoices.get(req, ::GustoEmbedded::Operations::GetInvoicesInvoicePeriodSecurity.new(
    system_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  ))

if ! res.invoice_data.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                    | Type                                                                                                                         | Required                                                                                                                     | Description                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                    | [::GustoEmbedded::Operations::GetInvoicesInvoicePeriodRequest](../../models/operations/getinvoicesinvoiceperiodrequest.md)   | :heavy_check_mark:                                                                                                           | The request object to use for the request.                                                                                   |
| `security`                                                                                                                   | [::GustoEmbedded::Operations::GetInvoicesInvoicePeriodSecurity](../../models/operations/getinvoicesinvoiceperiodsecurity.md) | :heavy_check_mark:                                                                                                           | The security requirements to use for the request.                                                                            |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetInvoicesInvoicePeriodResponse)](../../models/operations/getinvoicesinvoiceperiodresponse.md)**

