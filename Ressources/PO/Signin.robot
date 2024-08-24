*** Settings ***
Library    SeleniumLibrary


Resource    AddCustomer.robot

*** Variables ***


*** Keywords ***
Verify Page loaded 
    Wait Until Page Contains    Login


Login with valid credentiels 
    [Arguments]    ${email}    ${password}
    Fill "Email" Field       ${email}
    Fill "Password" Field    ${password}
    Click "submit" Button

Fill "Email" Field  
    [Arguments]    ${email}    
    Input Text            id=email-id     ${email}  
Fill "Password" Field
    [Arguments]    ${password}    
    Input Text            id=password     ${password}
Click "submit" Button  
    Click Button          id=submit-id  

    
login with missig credentiels
    [Arguments]    ${EMAIL_INVALID}        ${PASSWORD_INVALID}  
    Fill "Username" Field               ${EMAIL_INVALID}    
    Fil "Password" Field               ${PASSWORD_INVALID}
    click boutton submit


Fill "Username" Field
    [Arguments]     ${EMAIL_INVALID}  
    Input Text     id=email-id      ${EMAIL_INVALID} 
Fil "Password" Field 
    [Arguments]         ${PASSWORD_INVALID}
    Input Password     id=password     ${PASSWORD_INVALID}

click boutton submit
    Click Button    id=submit-id       


verifier login failed
   Element Should Not Be Visible    Our Happy Customers