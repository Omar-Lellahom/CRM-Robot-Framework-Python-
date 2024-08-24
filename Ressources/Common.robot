*** Settings ***
Library    SeleniumLibrary



*** Variables ***

${BROWSER}=               chrome
${CHROME_OPTIONS}     --disable-search-engine-choice-screen 


*** Keywords ***

Begin Web Test
    #[Arguments]       ${BROWSER_Name}
    #Create Webdriver    ${BROWSER_Name}    executable_path=Ressources/Drivers/${BROWSER_Name}
    Set Selenium Speed      0.2
    Set Selenium Timeout    10
    ${options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method  ${options}  add_argument  ${CHROME_OPTIONS}


    Open Browser           about:blanc     ${BROWSER}      options=${options} 
    Maximize Browser Window

    #resize browser window for recording 
    # Set Window Position    341    169
     #Set Window Size    1935    1090
            


End Web Test 
    Close All Browsers
