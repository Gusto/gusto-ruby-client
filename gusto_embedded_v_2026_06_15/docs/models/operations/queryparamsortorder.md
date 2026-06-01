# QueryParamSortOrder

A string indicating whether to sort resulting events in ascending (asc) or descending (desc) chronological order. Events are sorted by their `timestamp`. Defaults to asc if left empty.

## Example Usage

```ruby
require "gusto_embedded_client_v_2026_06_15"

value = QueryParamSortOrder::ASC
```


## Values

| Name   | Value  |
| ------ | ------ |
| `ASC`  | asc    |
| `DESC` | desc   |