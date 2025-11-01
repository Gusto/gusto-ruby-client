# ContractorPaymentGroupPartnerDisbursements

Partner disbursements for a contractor payment group


## Fields

| Field                                                                                    | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `contractor_payment_group_uuid`                                                          | *T.nilable(::String)*                                                                    | :heavy_minus_sign:                                                                       | The UUID of the contractor payment group                                                 |
| `disbursements`                                                                          | T::Array<[::GustoEmbedded::Shared::Disbursements](../../models/shared/disbursements.md)> | :heavy_minus_sign:                                                                       | List of disbursements for the contractor payment group                                   |