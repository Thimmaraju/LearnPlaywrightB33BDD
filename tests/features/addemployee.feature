Feature: Add Employee functionality


    Scenario: Verify add Employee with Mandatory Degtails 

        Given User Launch the Application
        When User Enter username "Admin" and password as "admin123"
        And User clicks on login button
        Then User should be navigated to Dashboard page
        When user clicks on PIM
        And  user clicks on Add Employee submenu 
        And  user enter firstname as "Dhanusha" and lastname as "K"
        And user clicks on save button 
        And Employee should be created 

    Scenario: Verify validation message for Mandatory Degtails 

        Given User Launch the Application
        When User Enter username "Admin" and password as "admin123"
        And User clicks on login button
        Then User should be navigated to Dashboard page
        When user clicks on PIM
        And  user clicks on Add Employee submenu 
        And user clicks on save button 
        And validation messages should be displayed for Mandatory fields 
