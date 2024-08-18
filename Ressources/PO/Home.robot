*** Settings ***
Library    SeleniumLibrary




*** Variables ***
${HOMME_HEADER_LABEL}=            Customers Are Priority One!  
    

*** Keywords ***
Navigate To
   Go To                          ${url}       

Verify Page loaded 
    Wait Until Page Contains      ${HOMME_HEADER_LABEL}    