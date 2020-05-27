describe('Home page', () => {
    it('loads and has a nav bar', () => {
        cy.visit('/')
        cy.contains('RP524')
    })
})
