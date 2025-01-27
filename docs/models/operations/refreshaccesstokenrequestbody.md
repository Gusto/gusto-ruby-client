# RefreshAccessTokenRequestBody


## Fields

| Field                                                        | Type                                                         | Required                                                     | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `client_id`                                                  | *::String*                                                   | :heavy_check_mark:                                           | Your client id                                               |
| `client_secret`                                              | *::String*                                                   | :heavy_check_mark:                                           | Your client secret                                           |
| `redirect_uri`                                               | *T.nilable(::String)*                                        | :heavy_minus_sign:                                           | The redirect URI you set up via the Developer Portal         |
| `refresh_token`                                              | *::String*                                                   | :heavy_check_mark:                                           | The `refresh_token` being exchanged for an access token code |
| `grant_type`                                                 | *::String*                                                   | :heavy_check_mark:                                           | this should be the literal string 'refresh_token'            |