require 'twitter_search'
require 'vcr_helper'

describe TwitterSearch do
  it "searches twitter", :vcr do
    tweets = TwitterSearch.search('adampash', 'bartending')
    expect(tweets.count).to eq 1
  end
end
