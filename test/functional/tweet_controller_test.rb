require 'test_helper'

class TweetControllerTest < ActionController::TestCase
  
   test "should get tweet" do
    get :tweet
    assert_response :success   
    assert_template :index
    assert_template layout: "layouts/application"
  end


test "should get tweet/user_tweet" do
    get :user_tweet
    assert_response :success   
    assert_template :user_tweet
    assert_template layout: "layouts/application"
  end


end
