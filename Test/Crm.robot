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
Should be able to add new Customer
    [Documentation]          This is same basic info about the 
    [Tags]                    Smoke
    CrmApp.Go to home page
    #login
     CrmApp.Login with valid credentiels    ${VALID_LOGIN_EMAIL}    ${VALID_PASSWORD}  
    #add costomer
    CrmApp.Add Customer

    CrmApp. log out

    #Click Link    id=new-customer
    #Wait Until Page Contains    Add Customer
    #Input Text    id=EmailAddress    MohamedAziz@gmail.com
    #Input Text    id=FirstName       Aziz
    #Input Text    id=LastName        Ben Lellahom
    #Input Text    id=City            Mnouba
    #Select From List By Value      id=StateOrRegion    TX
    #Select Radio Button            gender        male  
    #Select Checkbox               name=promos-name  
    #Click Button                  Submit   
    #Wait Until Page Contains     Success! New customer added.

    #log out
    #Click Link    Sign Out  
    #Wait Until Page Contains    Thank you for using the CRM. See you next time!   
    




