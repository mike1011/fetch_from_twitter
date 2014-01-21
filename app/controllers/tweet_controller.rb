class TweetController < ApplicationController

#/tweet get
#method to show the page for entering the hashtag and search it in using Twitter api
def index  
end

# GET tweet/user_tweet 
##this method calls the api and fetches the details in json format
def user_tweet
  get_tweets params[:Enter_what_you_want_to_search]
     respond_to do |format|
      format.html 
      format.json 
    end
  
end

end##controller class ends
