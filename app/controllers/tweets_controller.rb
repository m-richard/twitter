class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
	end

	def create

		render text: 'hello'
	end
end
