require 'twitter_search'
require 'categories'

class SearchController < ApplicationController
  def show
    terms = Categories.terms(params[:category])
    puts terms
    @tweets = TwitterSearch.search(params[:username], terms)
    # require 'pry'; binding.pry
  end

  def index
  end
end
