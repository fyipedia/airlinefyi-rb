Gem::Specification.new do |s|
  s.name        = "airlinefyi"
  s.version     = "0.1.0"
  s.summary     = "Ruby client for AirlineFYI API"
  s.description = "Ruby client for the AirlineFYI REST API at airlinefyi.com. Zero external dependencies."
  s.authors     = ["FYIPedia"]
  s.email       = "dev@fyipedia.com"
  s.homepage    = "https://airlinefyi.com"
  s.license     = "MIT"
  s.metadata    = {
    "source_code_uri" => "https://github.com/fyipedia/airlinefyi-rb",
    "documentation_uri" => "https://airlinefyi.com/api/v1/schema/",
    "homepage_uri" => "https://airlinefyi.com",
  }
  s.files       = Dir["lib/**/*.rb"]
  s.require_paths = ["lib"]
  s.required_ruby_version = ">= 3.0"
end
