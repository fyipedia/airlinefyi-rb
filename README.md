# airlinefyi

[![Gem Version](https://badge.fury.io/rb/airlinefyi.svg)](https://rubygems.org/gems/airlinefyi)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Ruby client for the [AirlineFYI](https://airlinefyi.com) REST API. Airlines, fleets. Zero external dependencies.

> **Explore at [airlinefyi.com](https://airlinefyi.com)** — interactive tools and comprehensive reference.

## Install

```ruby
gem "airlinefyi"
```

## Quick Start

```ruby
require "airlinefyi"

client = AirlineFYI::Client.new
result = client.search("query")
puts result
```

## Also Available

| Platform | Install | Link |
|----------|---------|------|
| **Python** | `pip install airlinefyi` | [PyPI](https://pypi.org/project/airlinefyi/) |
| **npm** | `npm install airlinefyi` | [npm](https://www.npmjs.com/package/airlinefyi) |
| **Go** | `go get github.com/fyipedia/airlinefyi-go` | [pkg.go.dev](https://pkg.go.dev/github.com/fyipedia/airlinefyi-go) |
| **Rust** | `cargo add airlinefyi` | [crates.io](https://crates.io/crates/airlinefyi) |
| **Ruby** | `gem install airlinefyi` | [rubygems](https://rubygems.org/gems/airlinefyi) |


## Links

- **Site**: [airlinefyi.com](https://airlinefyi.com)
- **API**: [airlinefyi.com/api/v1/](https://airlinefyi.com/api/v1/)
- **OpenAPI**: [airlinefyi.com/api/v1/schema/](https://airlinefyi.com/api/v1/schema/)

Part of the [FYIPedia](https://fyipedia.com) open-source developer tools ecosystem.

## Transport FYI Family

Part of the [FYIPedia](https://fyipedia.com) open-source developer tools ecosystem.

| Site | Domain | Focus |
|------|--------|-------|
| **AirlineFYI** | [airlinefyi.com](https://airlinefyi.com) | Airlines, fleets, alliances, routes |
| AirportFYI | [airportfyi.com](https://airportfyi.com) | 4,500+ airports, IATA/ICAO codes, routes |
| PlaneFYI | [planefyi.com](https://planefyi.com) | Aircraft models, specifications, manufacturers |
| TrainFYI | [trainfyi.com](https://trainfyi.com) | Railway stations, train routes, rail networks |

## License

MIT
