Feature: Login

  Rules:
    - Username is case sensitive
    - 

  Questions:
    - 

  Background:
    Given Sean is an admin user
    And Bill is a normal user
    And Susan is no user
    
 Scenario: Sean logs in
    When Sean enters his credentials
    Then Sean logins into the system 
    And Welcome message should say "hello admin"
    

  Scenario: Susan can't log in
    When Susan enters her credentials
    Then Susan can't login 
    And Error is displayed
  
  //@high-impact
  
  Scenario: Bill logins with a wrong password
    When Bill enters his username
    And  Bill enters wrong password
    Then Bill can't login 
    And Error is displayed
    
