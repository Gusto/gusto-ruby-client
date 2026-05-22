# ContractorPaymentForGroupPreviewStatus

The status of the contractor payment.  Will transition to `Funded` during payments processing if the payment should be funded, i.e. has `Direct Deposit` for payment method. Contractors payments with `Check` payment method will remain `Unfunded`.

## Example Usage

```ruby
require "gusto_embedded_client"

value = ContractorPaymentForGroupPreviewStatus::FUNDED
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `FUNDED`   | Funded     |
| `UNFUNDED` | Unfunded   |