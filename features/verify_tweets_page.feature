Feature: Verify tweet page 
   Search for a hashtag using twitter api
  


  Scenario: verify the api using static json response 
    When I send a POST request to "/tweet/user_tweet" with: "freebandnames"
    Then the JSON response should have "urls" elements
    Then I should receive the following JSON object response:
      """
         [
        {
          "text": "freebandnames",
          "url":"http://bullcityrecords_one.com/wnng/",
          "url":"http://bullcityrecords_two.com/wnng/"
        },
        {
          "text":"freebandnames",
          "url":"http://bullcityrecords_two.com/wnng/",
          "url":"http://bullcityrecords_one.com/wnng/"
        },
        {
          "text":"freebandnames",
          "url":"http://bullcityrecords_three.com/wnng/",
          "url":"http://bullcityrecords_one.com/wnng/"
        },
        {
          "text":"freebandnames",
          "url":"http://bullcityrecords_four.com/wnng/"
        },
        {
          "text":"freebandnames",
          "url":"http://bullcityrecords_five.com/wnng/"
        },
        {
          "text":"freebandnames",
          "url":"http://bullcityrecords_six.com/wnng/",
          "url":"http://bullcityrecords_two.com/wnng/"
        },
        {
          "text":"freebandnames",
          "url":"http://bullcityrecords_seven.com/wnng/"
        },
        {
          "text":"freebandnames",
          "url":"http://bullcityrecords_eight.com/wnng/"
        },
        {
          "text":"freebandnames",
          "url":"http://bullcityrecords_nine.com/wnng/"
        },
        {
          "text":"freebandnames",
          "url":"http://bullcityrecords_ten.com/wnng/"
        }
        
        
      ]
      """
   
   
 