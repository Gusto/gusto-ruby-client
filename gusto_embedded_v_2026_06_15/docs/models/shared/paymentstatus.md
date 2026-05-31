# PaymentStatus

The status of the ACH transaction

## Example Usage

```ruby
require "gusto_embedded_client_v_2026_06_15"

value = PaymentStatus::UNSUBMITTED
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `UNSUBMITTED` | unsubmitted   |
| `SUBMITTED`   | submitted     |
| `SUCCESSFUL`  | successful    |
| `FAILED`      | failed        |