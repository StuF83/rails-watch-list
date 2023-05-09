require 'open-uri'
require 'json'

class MoviesController < ApplicationController
  def index
    url = "https://api.themoviedb.org/3/search/movie?api_key=#{ENV['TMDB_API_KEY']}&query=Jack+Reacher"
    data = JSON.parse(URI.open(url).read)
    @results = data['results']
  end
end
