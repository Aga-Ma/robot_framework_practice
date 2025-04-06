*** Settings ***
Library     SeleniumLibrary
# Run the script:
# robot -d results tests/crm.robot

*** Variables ***
${BROWSER}      chrome

*** Test Cases ***
Should be able to add new customer
    [Tags]    1006    smoke    contacts

    # open the browser
    Log    Starting the test case!
    Open Browser    https://automationplayground.com/crm/    ${BROWSER}

    # resize browser window for recording
    Set Window Size    width=1935    height=1090

    Wait Until Page Contains    Customers Are Priority One

    Click Link    id=SignIn
    Wait Until Page Contains    Login

    Input Text    id=email-id    admin@robotframeworktutorial.com
    Input Text    id=password    qwe
    Click Button    id=submit-id
    Wait Until Page Contains    Our Happy Customers

    Click Link    id=new-customer
    Wait Until Page Contains    Add Customer

    Input Text    id=EmailAddress    janedoe@gmail.com
    Input Text    id=FirstName    Jane
    Input Text    id=LastName    Doe
    Input Text    id=City    Dallas
    Select From List By Value    id=StateOrRegion    TX
    Select Radio Button    gender    female
    Select Checkbox    name=promos-name
    Click Button    Submit
    Wait Until Page Contains    Success! New customer added.

    Click Link    Sign Out
    Wait Until Page Contains    Signed Out

    Close Browser
