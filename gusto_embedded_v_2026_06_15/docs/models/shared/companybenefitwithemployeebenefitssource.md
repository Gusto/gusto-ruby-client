# CompanyBenefitWithEmployeeBenefitsSource

The source of the company benefit. This can be "internal", "external", or "partnered". Company benefits created via the API default to "external". Certain partners can create company benefits with a source of "partnered".

## Example Usage

```ruby
require "gusto_embedded_client_v_2026_06_15"

value = CompanyBenefitWithEmployeeBenefitsSource::INTERNAL
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `INTERNAL`  | internal    |
| `EXTERNAL`  | external    |
| `PARTNERED` | partnered   |