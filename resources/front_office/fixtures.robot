*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}          https://automationplayground.com/front-office/

*** Keywords ***
Open The App
    Open Browser    ${URL}    ${BROWSER}
    Set Window Size    width=1935    height=1090

Cleanup
    Close Browser