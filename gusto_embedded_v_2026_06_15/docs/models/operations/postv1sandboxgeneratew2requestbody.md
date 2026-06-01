# PostV1SandboxGenerateW2RequestBody


## Fields

| Field                                                                                        | Type                                                                                         | Required                                                                                     | Description                                                                                  |
| -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- |
| `employee_id`                                                                                | *::String*                                                                                   | :heavy_check_mark:                                                                           | The employee UUID.                                                                           |
| `year`                                                                                       | *T.nilable(::Integer)*                                                                       | :heavy_minus_sign:                                                                           | Must be equal to or more recent than 2015. If not specified, defaults to the previous year.<br/> |