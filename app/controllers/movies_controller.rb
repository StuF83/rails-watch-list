require 'open-uri'
require 'json'

class MoviesController < ApplicationController

  def index
    url = 'https://tmdb.lewagon.com/movie/top_rated'
    data = JSON.parse(URI.open(url).read)
    @results = data['results']
  end
end
