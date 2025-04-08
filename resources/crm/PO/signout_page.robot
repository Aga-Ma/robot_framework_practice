*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SIGNEDOUT_HEADER}     Signed Out


*** Keywords ***
Sign Out Page Is Open
    Wait Until Page Contains    ${SIGNEDOUT_HEADER}