Feature: Login functionality


    Scenario: Verify login with valid Credentials

        Given User Launch the Application
        When User Enter username "Admin" and password as "vmbndfgvdf"
        And User clicks on login button
        Then User should be navigated to Dashboard page

    Scenario: Verify login with valid username and Invalid password

        Given User Launch the Application
        When User Enter username "Admin" and password as "hbvgfhr"
        And User clicks on login button
        Then User should get login error message


    Scenario: Verify login with invalid username and valid password

        Given User Launch the Application
        When User Enter username "efvjhb" and password as "admin123"
        And User clicks on login button
        Then User should get login error message

    Scenario: Verify login with invalid username and invalid password

        Given User Launch the Application
        When User Enter username "efvjhb" and password as "admiwjehhbfn123"
        And User clicks on login button
        Then User should get login error message