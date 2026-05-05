require 'httparty'

class Movie < ApplicationRecord
  def self.search_tmdb(query)
    return [] if query.blank?

    api_key = "181763d221821508b186934f75a595f6"

    response = HTTParty.get(
      "https://api.themoviedb.org/3/search/movie",
      query: {
        api_key: api_key,
        query: query
      }
    )

    response["results"] || []
  end
end