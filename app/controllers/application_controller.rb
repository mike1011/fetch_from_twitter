class ApplicationController < ActionController::Base
  protect_from_forgery

  #basic configuration using the credentials
  def get_tweets search_text
    begin
    # hit the API
      TWITTER_CLIENT.client.search(search_text, :count => 10, :result_type => "recent").collect do |tweet|
        @tweets << "#{tweet.urls}"
      end
    rescue
      @show_error_message = "It seems that something has went wrong,Please try after some time" if @tweets == nil
    end

  end

end
