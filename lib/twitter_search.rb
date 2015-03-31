require 'twitter'

module TwitterSearch
  def self.client
    Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_SECRET"]
      config.access_token        = ENV["ACCESS_TOKEN"]
      config.access_token_secret = ENV["ACCESS_SECRET"]
    end
  end
  def self.search(username, query)
    client.search("from:#{username} #{query}").attrs[:statuses]
  end

end