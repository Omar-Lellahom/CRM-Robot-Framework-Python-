*** Settings ***

Library                SeleniumLibrary
Resource               ../Ressources/Common.robot
Resource               ../Ressources/CrmApp.robot    
Test Setup             Begin Web Test
Test Teardown          End Web Test


*** Variables ***
     


*** Test Cases ***
Should be able to add new Customer
    [Documentation]          This is same basic info about the 
    [Tags]                    Smoke
    CrmApp.Go to home page
    Click Link      id=SignIn
    Input Text      id=email-id    omar.ben.lellahom@gmail.com
    Input Text      id=password    123
    Click Button    id=submit-id




