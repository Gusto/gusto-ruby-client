# ReverseWireTransactionStatus

Current status of the reverse wire transaction.
- `pending_processing`: The reverse wire has been initiated and is awaiting processing by the banking network.
- `processed`: The reverse wire was successfully settled and funds have been received.
- `rejected`: The reverse wire was rejected by the receiving bank (e.g. invalid account, insufficient funds).
- `failed`: The reverse wire failed during processing due to a system or network error.


## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = ReverseWireTransactionStatus::PENDING_PROCESSING

# Open enum: use .deserialize() to create instances from custom string values
custom = ReverseWireTransactionStatus.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `PENDING_PROCESSING` | pending_processing   |
| `PROCESSED`          | processed            |
| `REJECTED`           | rejected             |
| `FAILED`             | failed               |