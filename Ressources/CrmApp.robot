*** Settings ***


Library    SeleniumLibrary
Resource               ../Ressources/PO/Home.robot

*** Variables ***


*** Keywords ***
Go to home page
    Home.Navigate To
    Home.Verify Page loaded
    