*** Settings ***
Resource    resources/crm/common.robot
Resource    resources/crm/PO/login_page.robot
Resource    resources/crm/PO/customers_page.robot
Resource    resources/crm/PO/topnav_component.robot
Resource    resources/crm/PO/add_customer_page.robot
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
    [Teardown]    SignOut
    SignIn
    Login To Automationplayground    ${VALID_LOGIN}    ${VALID_PASSWARD}
    Customers Page Is Open

User is not able to login with invalid login
    [Tags]    smoke
    SignIn
    Login To Automationplayground    ${INVALID_LOGIN}    ${VALID_PASSWARD}
    Login Page Is Open

New customer can be added
    [Tags]    smoke    contacts
    [Setup]     Run Keywords       SignIn
    ...         AND    Login To Automationplayground    ${VALID_LOGIN}    ${VALID_PASSWARD}
    ...         AND    Customers Page Is Open
    [Teardown]    SignOut

    Click Add New Customer
    Fill New Customer Form    janedoe@gmail.com    Jane    Doe    Dallas    TX    female
    Submit Customer Form
    Customer Creation Succeeds
