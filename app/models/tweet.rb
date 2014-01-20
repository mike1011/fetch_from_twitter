class Tweet < ActiveRecord::Base

  require 'grackle'
  attr_accessor :value_to_search, :tweets
  validates_presence_of :value_to_search
  validates_length_of :value_to_search, :minimum => 2,:allow_blank => false
  attr_reader :errors

  ####Connect to the Twitter API and pull down the latest tweets"""
  def get_tweets
    ##added the rescue block to handle exceptions during no internet connection
    begin
      ##usign percentage coding to make compatible with the url while searching
      self.tweets = client.users.search?:q=>"%23#{Tweet.value_to_search}" # hit the API
    rescue
       errors.add :base, "It seems that something has went wrong,Please try after some time" if self.tweets == nil
    end
  end

private
  #basic configuration using the credentials
  def  client
    Grackle::Client.new(:auth=>{
      :type=>:oauth,
      :consumer_key=> TWITTER_CREDENTIALS['consumer_key'],
      :consumer_secret=> TWITTER_CREDENTIALS['consumer_secret'],
      :token=> TWITTER_CREDENTIALS['token'],
      :token_secret=>TWITTER_CREDENTIALS['token_secret']
    })
  end
end
