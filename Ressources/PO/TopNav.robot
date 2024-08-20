*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${LINK_SIGN_IN}=        id=SignIn

*** Keywords ***

Click Sign in Link
    Click Link    ${LINK_SIGN_IN}  

Click to button Add Customer
    Click Link    new-customer


Click link log out
    Click Link    Sign Out    
