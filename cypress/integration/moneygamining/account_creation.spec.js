/// <reference types="Cypress" />

Cypress.on('uncaught:exception', (err, runnable) => {
    return false;
  });


  describe('Tests the creation of a new account', ()=>{
      it('Should validate date of birth field', ()=>{
          cy.visit('https://moneygaming.qa.gameaccount.com/')
          //Select the 'Join Now' button
          cy.get('.newUser').click()
          //Select the 'title' from the drop down
          cy.get('#title').select('Mr')
          //Completes the 'First Name' field
          cy.get('#forename').type('Lloyd')
          //Completes the 'Surname Name' field
          cy.get('[name="map(lastName)"]').type('Blake')
          //Selects the 'Terms and Conditions' checkbox
          cy.get(':nth-child(6) > .required').click()
          cy.get('#form').click()
         //Validates that the text message ‘This field is required’ appears under date of birth box
          cy.get('[for="dob"]').should('contain', 'This field is required')
          
        




          

      })
  })

