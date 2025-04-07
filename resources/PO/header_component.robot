*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
SignIn
    Click Link                  SignIn
    Wait Until Page Contains    Login

SignOut
    Click Link    Sign Out
    Wait Until Page Contains    Signed Out