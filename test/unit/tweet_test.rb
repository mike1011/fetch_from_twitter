require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def test_twitter_api_for_success
  
  stub_request(:any, 'https://twitter.com/?refsrc=email').to_return { |request| {:body => request.body} }
  RestClient.get('https://twitter.com/?refsrc=email', 'shahrukh khan')    # ===> "abc\n"
  
end
