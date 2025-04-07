*** Settings ***
Resource    resources/common.robot
Resource    resources/PO/login_page.robot
Resource    resources/PO/customers_page.robot
Resource    resources/PO/header_component.robot
Resource    resources/PO/add_customer_page.robot
Test Setup       Go To Automationplaygraound
Test Teardown    Close Browser


*** Test Cases ***
New customer can be added
    [Tags]    1006    smoke    contacts

    SignIn
    Login To Automationplayground    admin@robotframeworktutorial.com    qwe
    Click Add New Customer
    Fill New Customer Adding Form    janedoe@gmail.com    Jane    Doe    Dallas    TX    female
    Submit Customer Form
    SignOut



