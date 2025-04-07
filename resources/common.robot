*** Settings ***
Library     SeleniumLibrary
Resource    PO/home_page.robot


*** Variables ***
${BROWSER}      chrome


*** Keywords ***
Go To Automationplaygraound
    Open Browser    https://automationplayground.com/crm/    ${BROWSER}
    Set Window Size    width=1935    height=1090
    Home Page Is Open