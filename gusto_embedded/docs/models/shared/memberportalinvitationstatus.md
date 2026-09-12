# MemberPortalInvitationStatus

Member portal invitation status information. Only included when the include param has the portal_invitations value set.


## Fields

| Field                                                                                  | Type                                                                                   | Required                                                                               | Description                                                                            |
| -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| `status`                                                                               | [T.nilable(Models::Shared::ContractorStatus)](../../models/shared/contractorstatus.md) | :heavy_minus_sign:                                                                     | The current status of the member portal invitation.                                    |
| `token_expired`                                                                        | *T.nilable(T::Boolean)*                                                                | :heavy_minus_sign:                                                                     | Whether the invitation token has expired.                                              |
| `welcome_email_sent_at`                                                                | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                   | :heavy_minus_sign:                                                                     | The date and time when the welcome email was sent.                                     |
| `last_password_resent_at`                                                              | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                   | :heavy_minus_sign:                                                                     | The date and time when the password reset was last resent.                             |