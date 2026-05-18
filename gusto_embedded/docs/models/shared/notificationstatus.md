# NotificationStatus

Represents the notification's status as managed by our system. It is updated based on observable system events and internal business logic, and does not reflect resolution steps taken outside our system. This field is read-only and cannot be modified via the API.

## Example Usage

```ruby
require "gusto_embedded_client"

value = NotificationStatus::OPEN
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `OPEN`     | open       |
| `RESOLVED` | resolved   |
| `EXPIRED`  | expired    |