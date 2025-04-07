*** Settings ***
Resource    PO/login_page.robot

*** Keywords ***
The User Is Logged In
    [Arguments]    ${login}    ${pass}
    Login To Automationplayground    ${login}    ${pass}