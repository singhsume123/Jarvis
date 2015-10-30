Feature: Add multiple teams to same user
 
  As an advisor
  So that I can add new teams under an advisor
  I want to add multiple teams under an advisor

Scenario: Create advisor
  Given I am on the New Advisor User Page
  And I fill in "advisor_user_username" with "def@def.com"
  And I fill in "advisor_user_password" with "helloo"
  And I fill in "advisor_user_password_confirmation" with "helloo"
  And I fill in "advisor_user_first_name" with "def"
  And I fill in "advisor_user_last_name" with "def"
  And I fill in "advisor_user_school_name" with "def"
  And I select "High" from "advisor_user_school_level"
  And I press "Create Advisor user"
  Then I should see "Advisor user was successfully created"
#  And I follow "Sign up now!"

Scenario: Login
  Given I am on the login page
  And I fill in "session_email" with "def@def.com"
  And I fill in "session_password" with "helloo"
  And I press "Log in"
  Then I should see "Advisor Page"

Scenario: Add new team
  Given I am on the advisor page
  And I follow "Create a new team"
  Then I should be on the "Team Creation Page"

