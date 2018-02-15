class HomeController < ApplicationController
  def index
  	if params[' '] == nil
  		@tweet = ' '
  	else
  		@tweet = params[' '][:content]
  		flash[:success] = 'Le tweet a bien été publié !'
  		SendTweet.new(@tweet).perform
  		redirect_to '/'
  	end
  end
end
