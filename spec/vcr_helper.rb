require 'dotenv'
Dotenv.load

require 'vcr'
VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.hook_into :webmock # or :fakeweb
  config.filter_sensitive_data('<KEY>') { ENV["CONSUMER_KEY"]}
  config.filter_sensitive_data('<KEY>') { ENV["CONSUMER_SECRET"]}
  config.filter_sensitive_data('<KEY>') { ENV["ACCESS_TOKEN"]}
  config.filter_sensitive_data('<KEY>') { ENV["ACCESS_SECRET"]}
end

require 'rails_helper'
RSpec.configure do |c|
  c.around(:each, :vcr) do |example|
    name = example.metadata[:full_description].split(/\s+/, 2).join("/").underscore.gsub(/[^\w\/]+/, "_")
    options = example.metadata.slice(:record, :match_requests_on).except(:example_group)
    VCR.use_cassette(name, options) { example.call }
  end
end
