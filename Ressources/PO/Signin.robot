*** Settings ***
Library    SeleniumLibrary



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

    
   

