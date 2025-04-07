*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Login To Automationplayground
    [Arguments]    ${login}    ${pass}
    Input Text     id=email-id    ${login}
    Input Text     id=password    ${pass}
    Click Button   id=submit-id
    Wait Until Page Contains    Our Happy Customers