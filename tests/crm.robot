*** Settings ***
Library          SeleniumLibrary

*** Test Cases ***
Should be able to add new customer
    [Tags]          1    Smoke    Contacts
    Log             Starting the test
    Open Browser    https://automationplayground.com/crm    chrome
    Sleep           3s
    Close Browser

