*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${LANDING_PGE_HEADER}       Customers Are Priority One


*** Keywords ***
Landing Page Is Open
    Wait Until Page Contains    ${LANDING_PGE_HEADER}