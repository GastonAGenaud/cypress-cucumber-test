import { When } from 'cypress-cucumber-preprocessor/steps';
const makeId = require('../../common/utils');
When('I focus on text input', (text) => {
});

When('I type on email field {string}', (text) => {
  cy.get('#e-mail').as('input').click();
  cy.get('#e-mail').type(makeId.makeid(5) + text);
});

When('I type on password field {string}', (text) => {
  cy.get('#password').as('input').click();
  cy.get('#password').type(text);
});

When('I type on username field {string}', (text) => {
  cy.get('#username').as('input').click();
  cy.get('#username').type(text);
});
function signUp(){
  cy.get('.btn').contains(value).click();
}
When('I click button {string}', (value) => {
    if (value="Sign up") {
      signUp();
    }
    else{
      cy.get('#welcome > div > div > div > div').find('a > div > div > p').contains(value).click();
    }
});
