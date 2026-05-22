# Events

## Overview

### Available Operations

* [get](#get) - Get all events

## get

Fetch all events, going back up to 30 days, that your partner application has the required scopes for. Note that a partner does NOT have to have verified webhook subscriptions in order to utilize this endpoint.

📘 System Access Authentication

This endpoint uses the [Bearer Auth scheme with the system-level access token in the HTTP Authorization header](https://docs.gusto.com/embedded-payroll/docs/system-access)

scope: `events:read`

### Example Usage

<!-- UsageSnippet language="ruby" operationID="get-events" method="get" path="/v1/events" -->
```ruby
require 'gusto_embedded_client_v_2025_11_15'

Models = ::GustoEmbedded::Models
s = ::GustoEmbedded::Client.new

req = Models::Operations::GetEventsRequest.new
res = s.events.get(request: req, security: Models::Operations::GetEventsSecurity.new(
  system_access_auth: '<YOUR_BEARER_TOKEN_HERE>'
))

unless res.event_list.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Models::Operations::GetEventsRequest](../../models/operations/geteventsrequest.md)   | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |
| `security`                                                                            | [Models::Operations::GetEventsSecurity](../../models/operations/geteventssecurity.md) | :heavy_check_mark:                                                                    | The security requirements to use for the request.                                     |

### Response

**[T.nilable(Models::Operations::GetEventsResponse)](../../models/operations/geteventsresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::UnprocessableEntityError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |