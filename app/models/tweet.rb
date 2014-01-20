class Tweet < ActiveRecord::Base

  require 'twitter'
  attr_accessor :value_to_search, :tweets
  validates_presence_of :value_to_search
  validates_length_of :value_to_search, :minimum => 2,:allow_blank => false
  attr_reader :errors

  ####Connect to the Twitter API and pull down the latest tweets"""
  def get_tweets
    ##added the rescue block to handle exceptions during no internet connection
    begin
     # hit the API
      Tweet.client.search(:value_to_search, :count => 10, :result_type => "recent").collect do |tweet|  
        self.tweets << "#{tweet.urls}"
      end   
    rescue
       errors.add :base, "It seems that something has went wrong,Please try after some time" if self.tweets == nil
    end
  end

private
  #basic configuration using the credentials
  def self.client
      Twitter::REST::Client.new do |config|
        config.consumer_key        = TWITTER_CREDENTIALS['consumer_key']
        config.consumer_secret     = TWITTER_CREDENTIALS['consumer_secret']
        config.access_token        = TWITTER_CREDENTIALS['token']
        config.access_token_secret = TWITTER_CREDENTIALS['token_secret']
    end
end
