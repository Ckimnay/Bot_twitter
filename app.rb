require 'dotenv'
require 'twitter'
require 'pry'
Dotenv.load('.env')



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
return client.update("Mon premier t!!!")
end
login_twitter()
# ligne qui permet de tweeter sur ton compte
