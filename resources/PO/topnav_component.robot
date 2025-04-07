*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SIGNIN}       Sign In
${SIGNOUT}      Sign Out


*** Keywords ***
SignIn
    Click Link                  ${SIGNIN}

SignOut
    Click Link                  ${SIGNOUT}