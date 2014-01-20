
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given /^a user visits the tweet page$/ do
  visit tweet_index_path
end

When /^the user fill in the textbox$/ do
  fill_in "Search",    with: "India"
end


And /^the user clicks the submit button$/ do
  click_button "submit"
end


Then /^the user should see "(.*)"$/ do |content|
   page.has_content?(content)
end

When /^I go to (.+)$/ do |page_name|
 visit path_to(page_name)
end

Given /^a user visits the result page$/ do
  visit user_tweet_tweet_index_path
end