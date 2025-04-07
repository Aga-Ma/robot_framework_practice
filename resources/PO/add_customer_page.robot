*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Fill New Customer Adding Form
    [Arguments]    ${email}    ${firstname}    ${lastname}    ${city}    ${state}    ${gender}

    Input Text    id=EmailAddress    ${email}
    Input Text    id=FirstName    ${firstname}
    Input Text    id=LastName    ${lastname}
    Input Text    id=City    ${city}
    Select From List By Value    id=StateOrRegion    ${state}
    Select Radio Button    gender    ${gender}
    Select Checkbox    name=promos-name

Submit Customer Form
    Click Button    Submit
    Wait Until Page Contains    Success! New customer added.