def login_twitter
  client = Twitter::REST::Client.new do |config|
   ENV["TWITTER_CONSUMER_KEY"]
    ENV["TWITTER_CONSUMER_SECRET"]
   ENV["TWITTER_ACCESS_TOKEN"]
   ENV["TWITTER_ACCESS_TOKEN_SECRET"]
 config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
 config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
 config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
 config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]

end
return(client)
end
login_twitter()

def fetch(client)
  client.search("to:#bonjour_monde", result_type: "recent").take(25).collect do |tweet|
    "#{tweet.user.screen_name}: #{tweet.text}"
  end
end
fetch()
