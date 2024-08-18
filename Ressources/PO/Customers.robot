*** Settings ***
Library    SeleniumLibrary



*** Variables ***


*** Keywords ***
Verify Page loaded 
    Wait Until Page Contains    Our Happy Customers
    