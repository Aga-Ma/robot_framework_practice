*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${TEST_CLIENT}     RobotFrameworkTutorial.com Test Client
${TEAM_LINK}      Team

*** Keywords ***
Go To Team Page
    Click Link      ${TEAM_LINK}

Test Client Link Is Present
    Wait Until Page Contains       ${TEST_CLIENT}