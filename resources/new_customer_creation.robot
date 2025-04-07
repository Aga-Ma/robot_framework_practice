*** Settings ***
Resource    PO/customers_page.robot
Resource    PO/add_customer_page.robot


*** Keywords ***
The User Fills The 'New Customer' Form
    [Arguments]    ${email}    ${firstname}    ${lastname}    ${city}    ${state}    ${gender}
    Click Add New Customer
    Fill New Customer Form    ${email}    ${firstname}    ${lastname}    ${city}    ${state}    ${gender}


The User Submits The Form
    Submit Customer Form

A New Customer Is Added
    Customer Creation Succeeds
