class TweetsController < ApplicationController

	before_action :authenticate_user!

	def index
		@tweets = Tweet.all
	end

	def new
		@tweet = Tweet.new
	end

	def show
		@tweet = Tweet.find(params[:id])
	end

	def create
		@tweet = Tweet.new(tweet_params)
		@tweet.user = current_user
		if @tweet.save
			flash[:success] = 'You successfully created a tweet!'
			redirect_to new_tweet_path
		else
			flash[:alert] = 'You failed.'
			render 'new'
		end
	end

	def tweet_params
		return params.require(:tweet).permit(:content)
	end
end
