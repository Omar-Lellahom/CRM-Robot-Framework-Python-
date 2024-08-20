*** Settings ***
Library    SeleniumLibrary



*** Variables ***

${Add_customer_msg}=    Add Customer
*** Keywords ***
Verify Page loaded 
    Wait Until Page Contains     ${Add_customer_msg}  




Fill"AddCust" Field
    Fill champs
    click boutton submit

Fill champs
    Input Text    id=EmailAddress    MohamedAziz@gmail.com
    Input Text    id=FirstName       Aziz
    Input Text    id=LastName        Ben Lellahom
    Input Text    id=City            Mnouba
    Select From List By Value      id=StateOrRegion    TX
    Select Radio Button            gender        male  
    Select Checkbox               name=promos-name  

click boutton submit
        Click Button                  Submit           