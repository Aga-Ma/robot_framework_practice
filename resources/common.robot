*** Settings ***
Library     SeleniumLibrary
Resource    PO/landing_page.robot


*** Variables ***
${BROWSER}      chrome
${URL}          https://automationplayground.com/crm/


*** Keywords ***
Go To Automationplaygraound
    Open Browser    ${URL}    ${BROWSER}
    Set Window Size    width=1935    height=1090
    Landing Page Is Open