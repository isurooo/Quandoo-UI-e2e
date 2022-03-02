const login_url = '/login'
import {Given, When, And, Then} from "cypress-cucumber-preprocessor/steps"

Given('I open the heroku login page', () => {
    cy.visit('http://the-internet.herokuapp.com/login')
})

When('I should see the Login Page title', () => {
    cy.get('h2')
        .should('contain', 'Login Page')
})

When(/^I login as an existing "(.*)" user "(.*)" password$/, (username, password) => {
    cy.get('#username').type(username)
    cy.get('#password').type(password)
})

When('I click login button', () => {
    cy.get('.fa').contains('Login').click()
})

Then('{string} should be shown', (content) => {
    cy.contains(content, {timeout: 15000}).should('be.visible')
})

When('I logout from secure area', () => {
    cy.get('.icon-2x').contains('Logout').click()
})

