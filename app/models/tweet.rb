class Tweet < ActiveRecord::Base
	belongs_to :user

	validates :content, length: {maximum: 300}

	after_create :email_user

	# def email_user
	# 	TweetMailer.alert_user_about_tweet(self).deliver_now!
	# end
end
