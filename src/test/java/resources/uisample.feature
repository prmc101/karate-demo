Feature: To demonstrate the UI Automation using Karate

  Background: Configure Driver
    Given driver 'https://demo.nopcommerce.com/'

  Scenario: Verify the title of the page
    Then match driver.title == 'nopCommerce demo store'

  Scenario: Verify the user navigate to login page
    When click("//a[contains(text(),'Log in')]")
    * def actualText = text("//h1[contains(text(),'Welcome, Please Sign In!')]")
    Then match actualText == "Welcome, Please Sign In!"
    And input('#passwor', "prime123")