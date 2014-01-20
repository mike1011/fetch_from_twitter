Feature: Verify tweet page 
  In order to search for a hashtag
  the user will enter the details in the textbox and click on submit button


  Scenario: Land on tweet page and search for a name and verify 
   Given a user visits the tweet page
   Then the user should see "Search"
   ##user fill in Bill
   When the user fill in the textbox
   And the user clicks the submit button
   Then the user should see "Bill Maher"
   Then the user should see "Bill Zucker"
   Then the user should see "click to see the profile"


  Scenario: Land on tweet page and search for a nil value
   Given a user visits the tweet page
   Then the user should see "Search"
   And the user clicks the submit button
   Then the user should see "Search field cannot be blank"
  
   
   
 