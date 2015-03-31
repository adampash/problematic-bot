require 'twitter_search'
require 'dotenv'
Dotenv.load

describe TwitterSearch do
  it "searches twitter" do
    tweets = TwitterSearch.search('adampash', 'bartending')
    expect(tweets.length).to eq 1
  end
end
