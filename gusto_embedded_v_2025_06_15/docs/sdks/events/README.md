# Events
(*events*)

## Overview

### Available Operations

* [get](#get) - Get all events

## get

Fetch all events, going back up to 30 days, that your partner application has the required scopes for. Note that a partner does NOT have to have verified webhook subscriptions in order to utilize this endpoint.

> 📘 System Access Authentication
>
> This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access).

scope: `events:read`

### Example Usage

```ruby
require 'gusto_embedded_client'

s = ::GustoEmbedded::Client.new

req = ::GustoEmbedded::Operations::GetEventsRequest.new(
  sort_order: ::GustoEmbedded::Shared::SortOrder::ASC,
)

res = s.events.get(security: ::GustoEmbedded::Operations::GetEventsSecurity.new(
    system_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  ), req, ::GustoEmbedded::Operations::GetEventsSecurity.new(
    system_access_auth: "<YOUR_BEARER_TOKEN_HERE>",
  ))

if ! res.event_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                      | Type                                                                                           | Required                                                                                       | Description                                                                                    |
| ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| `request`                                                                                      | [::GustoEmbedded::Operations::GetEventsRequest](../../models/operations/geteventsrequest.md)   | :heavy_check_mark:                                                                             | The request object to use for the request.                                                     |
| `security`                                                                                     | [::GustoEmbedded::Operations::GetEventsSecurity](../../models/operations/geteventssecurity.md) | :heavy_check_mark:                                                                             | The security requirements to use for the request.                                              |

### Response

**[T.nilable(::GustoEmbedded::Operations::GetEventsResponse)](../../models/operations/geteventsresponse.md)**

