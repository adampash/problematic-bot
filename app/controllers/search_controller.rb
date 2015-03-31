require 'twitter_search'
class SearchController < ApplicationController
  def show
    @tweets = TwitterSearch.search('adampash', 'bartending')
  end

  def index
  end
end
