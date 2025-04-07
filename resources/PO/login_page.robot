*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${EMAIL_FIELD}      id=email-id
${PASSWORD_FIELD}       id=password
${SUBMIT_BUTTON}        id=submit-id


*** Keywords ***
Login Page Is Open
    Wait Until Page Contains    Login

Login To Automationplayground
    [Arguments]    ${login}    ${pass}
    Input Text     ${EMAIL_FIELD}    ${login}
    Input Text     ${PASSWORD_FIELD}    ${pass}
    Click Button   ${SUBMIT_BUTTON}