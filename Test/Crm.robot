*** Settings ***

Library                SeleniumLibrary
Resource               ../Ressources/Common.robot
Resource               ../Ressources/CrmApp.robot
Resource               ../Test/Variables.robot

Test Setup             Begin Web Test
Test Teardown          End Web Test


*** Variables ***
${URL}=                            ${URLPRINCIPAL}
${VALID_LOGIN_EMAIL}=              ${VALID_EMAIL}
${VALID_PASSWORD}=                 ${VALID_PASSWORD_Fild}           


*** Test Cases ***

Login should be fail with missing credentiels
    [Documentation]            this is for invalid credentiels
    [Tags]        rerg  
     CrmApp.Go to home page
     CrmApp.login avec invalid credentiels    ${EMAIL_INVALID}        ${PASSWORD_INVALID}
     



Should be able to add new Customer
    [Documentation]          This is same basic info about the 
    [Tags]                    Smoke
    CrmApp.Go to home page
    #login
    
    CrmApp.Login with valid credentiels    ${VALID_LOGIN_EMAIL}        ${VALID_PASSWORD}  
    #add costomer
    CrmApp.Add Customer
    CrmApp. log out





