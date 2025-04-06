*** Settings ***
Library     SeleniumLibrary
# Run the script:
# robot -d results tests/crm.robot


*** Test Cases ***
Should be able to add new customer
    [Tags]    1006    smoke    contacts

    # open the browser
    Log    Starting the test case!
    Open browser    https://automationplayground.com/crm/    chrome

    # resize browser window for recording
    Set window size    width=1935    height=1090

    Wait until page contains    Customers Are Priority One

    Click link    id=SignIn
    Wait until page contains    Login

    Input text    id=email-id    admin@robotframeworktutorial.com
    Input text    id=password    qwe
    Click button    id=submit-id
    Wait until page contains    Our Happy Customers

    Click link    id=new-customer
    Wait until page contains    Add Customer

    Input text    id=EmailAddress    janedoe@gmail.com
    Input text    id=FirstName    Jane
    Input text    id=LastName    Doe
    Input text    id=City    Dallas
    Select from list by value    id=StateOrRegion    TX
    Select radio button    gender    female
    Select checkbox    name=promos-name
    Click button    Submit
    Wait until page contains    Success! New customer added.

    Click link    Sign Out
    Wait until page contains    Signed Out

    Close browser
