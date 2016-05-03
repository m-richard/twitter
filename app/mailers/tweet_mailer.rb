class TweetMailer < ApplicationMailer
	def alert_user_about_tweet(tweet)
		@tweet = tweet
 		mail(to: @tweet.user.email, subject: 'Welcome to My Awesome Site')
	end
end
 