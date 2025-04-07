*** Settings ***
Resource    PO/topnav_component.robot
Resource    PO/login_page.robot

*** Keywords ***
#procedural
The User Is Logged In
    [Arguments]    ${login}    ${pass}
    Login To Automationplayground    ${login}    ${pass}
    Customers Page Is Open

#behavior
The User Click Sign In
    SignIn

The User Logs In With Credentials
    [Arguments]    ${login}    ${pass}
    Login To Automationplayground    ${login}    ${pass}

The Customers Page Is Open
    Customers Page Is Open

User Is Not Logged In
    Login Page Is Open