*** Settings ***
Resource    resources/crm/PO/topnav_component.robot
Resource    resources/crm/common.robot
Resource    resources/crm/user_action.robot
Resource    resources/crm/new_customer_creation.robot
Suite Setup       Go To Automationplaygraound
Suite Teardown    Close Browser

*** Variables ***
# This is test data, to test app. You can log there with ANYTHING that has a correct email format and make up the password.
# I would not bother to hide them.
${VALID_LOGIN}       admin@robotframeworktutorial.com
${VALID_PASSWARD}    qwe
${INVALID_LOGIN}       admin

*** Test Cases ***
User is able to login with valid data
    [Tags]      smoke
    [Teardown]  SignOut

    Given The User Click Sign In
    When The User Logs In With Credentials        ${VALID_LOGIN}    ${VALID_PASSWARD}
    Then The Customers Page Is Open

User is not able to login with invalid login
    [Tags]      smoke

    Given The User Click Sign In
    When The User Logs In With Credentials        ${INVALID_LOGIN}    ${VALID_PASSWARD}
    Then User Is Not Logged In

The user can add a new customer
    [Tags]    smoke    contacts
    [Setup]        SignIn
    [Teardown]     SignOut

    Given The User Is Logged In    ${VALID_LOGIN}    ${VALID_PASSWARD}
    When The User Fills The 'New Customer' Form    janedoe@gmail.com    Jane    Doe    Dallas    TX    female
    And The User Submits The Form
    Then A New Customer Is Added



