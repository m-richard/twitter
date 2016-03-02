class TweetsController < ApplicationController
	
	before_action :authenticate_user!

	def new
		@tweet = Tweet.new
	end

	def create
		#Comment below is parameters from terminal.  They aree accessed in sublime by typing in 'params'
		#  Parameters: {"utf8"=>"✓", "authenticity_token"=>"bm+GdCTOeYjEavpPYAHedymYT6IKCjBoYc9XstLiGhet4rhvciobGcwNP9ldM6EHYY6haG6ql4mr4sUIPdyV5A==", "tweet"=>{"content"=>"lets try to save"}, "commit"=>"Create Tweet"}
		@tweet = Tweet.new(tweet_params)
		@tweet.user = current_user
		if @tweet.save
			flash[:success]='STFU'
			redirect_to new_tweet_path
		else
			# got rid of flash message because simple_Form includes errors
			# flash[:danger] = "YOUR TWEET IS NOT GOOD ENOUGH"
			render 'new' #new.html.erb, not def new
		end
	end


	def tweet_params
		return params.require(:tweet).permit(:content)
	end
end
