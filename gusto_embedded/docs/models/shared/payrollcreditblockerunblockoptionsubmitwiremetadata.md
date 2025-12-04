# PayrollCreditBlockerUnblockOptionSubmitWireMetadata


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `wire_in_amount`                                                     | *::String*                                                           | :heavy_check_mark:                                                   | The amount to be wired in (decimal string)                           |
| `wire_in_deadline`                                                   | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html) | :heavy_check_mark:                                                   | Deadline for the wire transfer to be received                        |
| `wire_in_request_uuid`                                               | *::String*                                                           | :heavy_check_mark:                                                   | UUID of the wire in request                                          |