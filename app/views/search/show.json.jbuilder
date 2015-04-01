json.array! @tweets do |tweet|
  json.text tweet.text
  json.username tweet.user.screen_name
end
