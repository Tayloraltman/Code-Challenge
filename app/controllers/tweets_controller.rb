class TweetsController < ApplicationController
	before_action :authenticate, except: [ :index ]


  def index  
  	@tweets = Tweet.all
    render json: @tweets, status: 200
  end

  def new
  	@tweet = Tweet.new
  end
  
  def create
  	@tweet = Tweet.new(tweet_params)
  	@tweet.save
  		

  	end
	
	

  protected
  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      User.find_by(auth_token: token)
   end
  end


  def tweet_params
    params.require(:tweet).permit(:title, :body,)
  end

  def find_tweet
    @tweet = Tweet.find(params[:id])


  end

end
