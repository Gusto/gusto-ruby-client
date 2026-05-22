# PaymentStatus

The status of the ACH transaction

## Example Usage

```ruby
require "gusto_embedded_client"

value = PaymentStatus::UNSUBMITTED
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `UNSUBMITTED` | unsubmitted   |
| `SUBMITTED`   | submitted     |
| `SUCCESSFUL`  | successful    |
| `FAILED`      | failed        |