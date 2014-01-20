class TweetController < ApplicationController

#/tweet get
#method to show the page for entering the hashtag and search it in using Twitter api
def index
  @tweet=Tweet.new
end

# GET tweet/user_tweet 
##this method calls the api and fetches the details in json format
def user_tweet
  @tweet=Tweet.new(params[:tweet])
  if @tweet.valid?
     @tweet.get_tweets  
  else 
     render :action "index"   
  end
  
end

end##controller class ends
