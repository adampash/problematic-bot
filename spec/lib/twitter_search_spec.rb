require 'twitter_search'
require 'dotenv'
Dotenv.load

describe TwitterSearch do
  it "searches twitter" do
    VCR.use_cassette("basic search") do
      tweets = TwitterSearch.search('adampash', 'bartending')
      expect(tweets.count).to eq 1
    end
  end
end
