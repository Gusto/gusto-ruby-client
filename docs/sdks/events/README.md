# Events
(*events*)

## Overview

### Available Operations

* [list](#list) - Get all events

## list

Fetch all events, going back up to 30 days, that your partner application has the required scopes for. Note that a partner does NOT have to have verified webhook subscriptions in order to utilize this endpoint.

> 📘 System Access Authentication
>
> This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access).

scope: `events:read`

### Example Usage

```ruby
require 'gusto'


s = ::OpenApiSDK::Gusto.new


req = ::OpenApiSDK::Operations::GetEventsRequest.new(
  sort_order: ::OpenApiSDK::Shared::SortOrder::ASC,
)
    
res = s.events.list(req, ::OpenApiSDK::Operations::GetEventsSecurity.new(
    system_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  ))

if ! res.event_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [::OpenApiSDK::Operations::GetEventsRequest](../../models/operations/geteventsrequest.md)   | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |
| `security`                                                                                  | [::OpenApiSDK::Operations::GetEventsSecurity](../../models/operations/geteventssecurity.md) | :heavy_check_mark:                                                                          | The security requirements to use for the request.                                           |

### Response

**[T.nilable(::OpenApiSDK::Operations::GetEventsResponse)](../../models/operations/geteventsresponse.md)**

