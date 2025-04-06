*** Settings ***
Library          SeleniumLibrary

*** Test Cases ***
Should be able to add new customer
    [Tags]                  1    Smoke    Contacts

    # open the browser
    Log                     Starting the test
    Open Browser            https://automationplayground.com/crm    chrome

    # resize browser window
    Set window size         width=1935      height=1090


    Sleep                   3s
    Close Browser

