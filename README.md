# Heroku UI E2E Test

* Tools and framework
    * Javascript
    * Cypress 9.5.0 - web UI automation tool
    * Cucumber - Behavior-Driven Development (BDD)
    * Gherkin - define tests in Cucumber
    


* Advantages of using Cypress with cucumber
    * Cypress:
        * open source with an active community, support and capabilities like time travel, network traffic control
        * It's more universal because it is written in JavaScript and based on Mocha and Chai
        * cross-browser testing
        * there is no complex environment to set up

    * Cucumber:
        * BDD serves as the bridge between business, Testing and Developers
            * It's easy t0 share the test with non-technical teammates, clients
        * To maintain a higher test automation coverage
        * reduces error rates in test scenarios
        * No need to maintain separate test cases


* How do I use this repo?
    * Prerequisites

        * Download and install NodeJS (v14.17.3)
        * IDE - Visual studio code / WebStrom  

    * Clone a copy of the `herokuapp` repo locally
    * Open the project using IDE
    * Navigate to the `herokuApp` folder in terminal
    * Run `nvm` use command
    * Run `npm i` command
    * Run `npm run cypress:open` command to run the Cypress
    * Select the `Login.feature` from the `Cypress Test Runner` to run the automation


* Next possible steps for improvement
    * Non-functional test:
        * Verify if a user cannot enter the characters more than the specified range in Username and Password fields
        * Verify the login page by pressing ‘Back button’ of the browser. It should not allow you to enter into the
          system once you log out.
        * Verify the timeout of the login session.
        * Verify the Login page against SQL injection attack
        * Verify the time taken to log in with a valid username and password.
        * Verify if the login page allows to log in simultaneously with different credentials in a different browser
        * Automation test report
