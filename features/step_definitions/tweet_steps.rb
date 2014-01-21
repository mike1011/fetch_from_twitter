require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

When /^I send a GET request to "([^\"]*)"$/ do |url|

  header 'Accept', 'application/json'
  header 'Content-Type', 'application/json'
  post url
  
end

When /^I send a POST request to "([^\"]*)" with: "([^\"]*)"$/ do |url, body|

  header 'Accept', 'application/json'
  header 'Content-Type', 'application/json'

  post url, body.to_json
end

Then /^the JSON response should have "([^\"]*)" elements$/ do |name|
  page = JSON.parse(last_response.body)
  ##get the first element and verify the json
  one_user_array=page.each{|e| e.map(&:e['url']) }.flatten.uniq.first
  one_user_array['text']=="freebandnames"
  one_user_array['url']=="http://bullcityrecords_one.com/wnng/"
  
end

Then /^I should receive the following JSON object response:$/ do |expected_json|
  expected_json = JSON.parse(expected_json)
  response_json = JSON.parse(last_response.body)
  if expected_json.each{|e| e.map(&:e['url']) }.flatten.uniq.last['text'] == "freebandnames"
    expected_json.each{|e| e.map(&:e['url']) }.flatten.uniq.last['url'] == response_json.each{|e| e.map(&:e['url']) }.flatten.uniq.last['url']
  end
  response_json  == expected_json
end

