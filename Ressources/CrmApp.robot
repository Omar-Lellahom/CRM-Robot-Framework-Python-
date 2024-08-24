*** Settings ***


Library                SeleniumLibrary
Resource               ../Ressources/PO/Home.robot
Resource               ../Ressources/PO/Customers.robot
Resource               ../Ressources/PO/AddCustomer.robot
Resource               ../Ressources/PO/Signin.robot
Resource               ../Ressources/PO/TopNav.robot
Resource               ../Ressources/PO/LogOut.robot

*** Variables ***


*** Keywords ***
Go to home page
    Home.Navigate To
    Home.Verify Page loaded


login avec invalid credentiels
    [Arguments]    ${EMAIL_INVALID}    ${PASSWORD_INVALID}
    TopNav.Click Sign in Link
    Signin.Verify Page loaded
    Signin.login with missig credentiels    ${EMAIL_INVALID}    ${PASSWORD_INVALID}
    Signin.verifier login failed


Login with valid credentiels
    [Arguments]    ${email}    ${passworrd}   
    TopNav.Click Sign in Link_
    Signin.Verify Page loaded
    Signin.Login with valid credentiels    ${email}    ${passworrd}
    Customers.Verify Page loaded

Add Customer
    TopNav.Click to button Add Customer
    AddCustomer.Verify Page loaded
    AddCustomer.Fill"AddCust" Field
    Customers.Verify Page loaded
 log out
    TopNav.Click link log out
    LogOut.Verify Page loaded

    
    
    

