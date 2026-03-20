# airlinefyi-rb

Ruby client for [AirlineFYI](https://airlinefyi.com) REST API. Zero external dependencies.

## Install

```ruby
gem "airlinefyi"
```

## Usage

```ruby
require "airlinefyi"

client = AirlineFYI::Client.new
result = client.search("query")
puts result
```

## Links

- **Site**: [https://airlinefyi.com](https://airlinefyi.com)
- **API**: [https://airlinefyi.com/api/v1/](https://airlinefyi.com/api/v1/)
- **PyPI**: [pypi.org/project/airlinefyi](https://pypi.org/project/airlinefyi/)
- **npm**: [npmjs.com/package/airlinefyi](https://www.npmjs.com/package/airlinefyi)
- **Go**: [pkg.go.dev/github.com/fyipedia/airlinefyi-go](https://pkg.go.dev/github.com/fyipedia/airlinefyi-go)
- **Rust**: [crates.io/crates/airlinefyi](https://crates.io/crates/airlinefyi)

## License

MIT
