require 'twitter'

class SendTweet
	def initialize(tweet)
		@tweet = tweet
	end

	def perform
		log_in_to_twitter
		send_tweet
	end

	def log_in_to_twitter
		@client = Twitter::REST::Client.new do |config|
			config.consumer_key        = "EdVb1ZpnrG6qs2AD9zY2Mz1C6"
			config.consumer_secret     = "0Ntv65WMklAhY2ZnoZ46C4Fr9vOqduGd5xDkyVXDd19HjU6N1i"
			config.access_token        = "953299693374722052-XoPazedH9317YnmlBBkPsXE9ou2Ce61"
			config.access_token_secret = "qjjZauM66GfY7SvO7ONVB1WoETcuJB3pl90vU1OgCrGfK"
		end
	end

	def send_tweet
		@client.update(@tweet)
	end
end