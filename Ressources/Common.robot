*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${URL}=                   https://automationplayground.com/crm/
${BROWSER}=               chrome



*** Keywords ***
Begin Web Test
    Set Selenium Speed      0.2
    Set Selenium Timeout    10
    Open Browser           about:blanc     ${BROWSER}  
    Maximize Browser Window

    #resize browser window for recording 
    # Set Window Position    341    169
     #Set Window Size    1935    1090
            


End Web Test 
    Close All Browsers
