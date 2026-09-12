# MemberPortalInvitationStatus1

Current status of the member portal invitation.
- `pending`: The invitation record has been created but the invitation email has not yet been delivered.
- `sent`: The invitation email has been delivered to the member.
- `verified`: The member has been verified by the member portal partner.
- `complete`: The member has fully completed their member portal registration.
- `cancelled`: The invitation has been cancelled, either via `DELETE` on this endpoint or because it was superseded.


## Example Usage

```ruby
require "gusto_embedded_client_v_2025_11_15"

value = MemberPortalInvitationStatus1::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = MemberPortalInvitationStatus1.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `PENDING`   | pending     |
| `SENT`      | sent        |
| `VERIFIED`  | verified    |
| `COMPLETE`  | complete    |
| `CANCELLED` | cancelled   |