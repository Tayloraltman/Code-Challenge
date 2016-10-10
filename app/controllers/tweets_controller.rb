class TweetsController < ApplicationController
	before_action :authenticate, except: [ :index, :show ]


  def index  
  	@tweets = Tweet.all
    render json: @tweets, status: 200
  end

  def new
  	@tweet = Tweet.new
  end
  
  def create
  	user = User.find_by(id: params[:user_id])
    if tweet_params[:body].length <= 140
     user.tweets.create!(tweet_params)
      render json: user.tweets.last, status: 200
    else
      render json: {error: "Tweet must be less than 140 characters"}, status: 400
    end
  end


    def show
    tweet = Tweet.find_by(id: params[:id])
    if tweet
     	 render json: tweet, status: 200
    else
      render json: {error: "Cannot find tweet"}, status: 404
    	end
  	end

  	def destroy
    	tweet = Tweet.find_by(id: params[:id])
    	tweet.destroy
    	render json: tweet
  	end

def show
    @tweet = Tweet.find_by(id: params[:id])
    if @tweet != nil
      render json: @tweet, status: 200
    else
      render json: {error: "Cannot find tweet with the ID"}, status: 404
    end
end
	
	



  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      User.find_by(authentication: token)
   end
  end

private
  def tweet_params
    params.require(:tweet).permit(:title, :body, :authentication)
  end

end
  


