*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Click Add New Customer
    Click Link    id=new-customer
    Wait Until Page Contains    Add Customer