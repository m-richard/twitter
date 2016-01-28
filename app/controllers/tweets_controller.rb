class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
	end

	def create
		#Comment below is parameters from terminal.  They aree accessed in sublime by typing in 'params'
		#  Parameters: {"utf8"=>"✓", "authenticity_token"=>"bm+GdCTOeYjEavpPYAHedymYT6IKCjBoYc9XstLiGhet4rhvciobGcwNP9ldM6EHYY6haG6ql4mr4sUIPdyV5A==", "tweet"=>{"content"=>"lets try to save"}, "commit"=>"Create Tweet"}
		@tweet = Tweet.create(params[:tweet])
		render text: 'hello'
	end
end
