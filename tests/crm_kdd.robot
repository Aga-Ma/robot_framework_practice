*** Settings ***
Resource    resources/common.robot
Resource    resources/PO/login_page.robot
Resource    resources/PO/customers_page.robot
Resource    resources/PO/header_component.robot
Resource    resources/PO/add_customer_page.robot
Suite Setup       Go To Automationplaygraound
Suite Teardown    Close Browser


*** Test Cases ***
New customer can be added
    [Tags]    1006    smoke    contacts
    [Setup]     Run Keywords       SignIn
    ...         AND    Login To Automationplayground    admin@robotframeworktutorial.com    qwe
    [Teardown]    SignOut

    Click Add New Customer
    Fill New Customer Form    janedoe@gmail.com    Jane    Doe    Dallas    TX    female
    Submit Customer Form
    Customer Creation Succeeds
