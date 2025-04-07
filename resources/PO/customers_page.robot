*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${CUSTOMERS_HEADER}     Our Happy Customers
${NEW_CUSTOMER}     id=new-customer

*** Keywords ***
Customers Page Is Open
    Wait Until Page Contains    ${CUSTOMERS_HEADER}

Click Add New Customer
    Click Link    ${NEW_CUSTOMER}