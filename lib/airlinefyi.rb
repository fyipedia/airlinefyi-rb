# frozen_string_literal: true

require "net/http"
require "json"
require "uri"

# Ruby client for AirlineFYI REST API (airlinefyi.com).
#
#   client = AirlineFYI::Client.new
#   result = client.search("query")
#
module AirlineFYI
  class Client
    BASE_URL = "https://airlinefyi.com"

    def initialize(base_url: BASE_URL)
      @base_url = base_url
    end

    def search(query)
      get("/api/v1/search/", q: query)
    end

    # List all airlines.
    def list_airlines
      get("/api/v1/airlines/")
    end

    # Get airline by slug.
    def get_airline(slug)
      get("/api/v1/airlines/#{slug}/")
    end
    # List all airports.
    def list_airports
      get("/api/v1/airports/")
    end

    # Get airport by slug.
    def get_airport(slug)
      get("/api/v1/airports/#{slug}/")
    end
    # List all brief series.
    def list_brief_series
      get("/api/v1/brief-series/")
    end

    # Get brief sery by slug.
    def get_brief_sery(slug)
      get("/api/v1/brief-series/#{slug}/")
    end
    # List all cabin products.
    def list_cabin_products
      get("/api/v1/cabin-products/")
    end

    # Get cabin product by slug.
    def get_cabin_product(slug)
      get("/api/v1/cabin-products/#{slug}/")
    end
    # List all countries.
    def list_countries
      get("/api/v1/countries/")
    end

    # Get country by slug.
    def get_country(slug)
      get("/api/v1/countries/#{slug}/")
    end
    # List all faqs.
    def list_faqs
      get("/api/v1/faqs/")
    end

    # Get faq by slug.
    def get_faq(slug)
      get("/api/v1/faqs/#{slug}/")
    end
    # List all flight corridors.
    def list_flight_corridors
      get("/api/v1/flight-corridors/")
    end

    # Get flight corridor by slug.
    def get_flight_corridor(slug)
      get("/api/v1/flight-corridors/#{slug}/")
    end
    # List all flights.
    def list_flights
      get("/api/v1/flights/")
    end

    # Get flight by slug.
    def get_flight(slug)
      get("/api/v1/flights/#{slug}/")
    end
    # List all glossary.
    def list_glossary
      get("/api/v1/glossary/")
    end

    # Get term by slug.
    def get_term(slug)
      get("/api/v1/glossary/#{slug}/")
    end
    # List all guide series.
    def list_guide_series
      get("/api/v1/guide-series/")
    end

    # Get guide sery by slug.
    def get_guide_sery(slug)
      get("/api/v1/guide-series/#{slug}/")
    end
    # List all guides.
    def list_guides
      get("/api/v1/guides/")
    end

    # Get guide by slug.
    def get_guide(slug)
      get("/api/v1/guides/#{slug}/")
    end
    # List all hub profiles.
    def list_hub_profiles
      get("/api/v1/hub-profiles/")
    end

    # Get hub profile by slug.
    def get_hub_profile(slug)
      get("/api/v1/hub-profiles/#{slug}/")
    end
    # List all industry briefs.
    def list_industry_briefs
      get("/api/v1/industry-briefs/")
    end

    # Get industry brief by slug.
    def get_industry_brief(slug)
      get("/api/v1/industry-briefs/#{slug}/")
    end
    # List all loyalty programs.
    def list_loyalty_programs
      get("/api/v1/loyalty-programs/")
    end

    # Get loyalty program by slug.
    def get_loyalty_program(slug)
      get("/api/v1/loyalty-programs/#{slug}/")
    end
    # List all tools.
    def list_tools
      get("/api/v1/tools/")
    end

    # Get tool by slug.
    def get_tool(slug)
      get("/api/v1/tools/#{slug}/")
    end

    private

    def get(path, **params)
      uri = URI.join(@base_url, path)
      uri.query = URI.encode_www_form(params) unless params.empty?
      response = Net::HTTP.get_response(uri)
      raise "HTTP #{response.code}" unless response.is_a?(Net::HTTPSuccess)
      JSON.parse(response.body)
    end
  end
end
