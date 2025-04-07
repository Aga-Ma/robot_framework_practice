*** Settings ***
Resource    resources/PO/header_component.robot
Resource    resources/common.robot
Resource    resources/user_action.robot
Resource    resources/new_customer_creation.robot
Suite Setup       Go To Automationplaygraound
Suite Teardown    Close Browser


*** Test Cases ***
The user can add a new customer
    [Tags]    1006    smoke    contacts
    [Setup]        SignIn
    [Teardown]     SignOut

    Given The User Is Logged In    admin@robotframeworktutorial.com    qwe
    When The User Fills The 'New Customer' Form    janedoe@gmail.com    Jane    Doe    Dallas    TX    female
    And The User Submits The Form
    Then A New Customer Is Added



