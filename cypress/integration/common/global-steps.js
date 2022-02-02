import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';

Given('I go to {string}', (url) => {
  Cypress.on('uncaught:exception', () => false);
  cy.visit(url);
  cy.get('#signup-header-text-customize').click();
});

Then('I see title {string}', (title) => {
  var check = cy.title().should('equal', title);
  expect(check).to.equal(true);
});

Then('I see text {string}', (text) => {
  cy.get('body').should('contain', text);
});

Then('I see link {string}', (text) => {
  cy.xpath(`//a[text()="${text}"]`).should('have.length', 1);
});

Then('I am redirected to the URL {string}', (text) => {
  cy.url().should('eq', text);
});