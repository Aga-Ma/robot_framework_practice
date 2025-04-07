*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${ADD_CUSTOMER}         Add Customer
${EMAIL_ADDRESS_FIELD}      id=EmailAddress
${FIRST_NAME_FIELD}     id=FirstName
${LAST_NAME_FIELD}     id=LastName
${CITY_FIELD}     id=City
${REGION_DROPDOWN}     id=StateOrRegion
${GENDER_RADIO_BUTTON}     gender
${PROMOTION_CHECKBOX}     name=promos-name
${SUBMIT_FORM}      Submit
${CUSTOMER_ADDED_MESSEGE}       Success! New customer added.



*** Keywords ***
New Customer Page Is Open
    Wait Until Page Contains    ${ADD_CUSTOMER}

Fill New Customer Form
    [Arguments]    ${email}    ${firstname}    ${lastname}    ${city}    ${state}    ${gender}

    Input Text    ${EMAIL_ADDRESS_FIELD}     ${email}
    Input Text    ${FIRST_NAME_FIELD}    ${firstname}
    Input Text    ${LAST_NAME_FIELD}    ${lastname}
    Input Text    ${CITY_FIELD}    ${city}
    Select From List By Value    ${REGION_DROPDOWN}    ${state}
    Select Radio Button    ${GENDER_RADIO_BUTTON}    ${gender}
    Select Checkbox    ${PROMOTION_CHECKBOX}

Submit Customer Form
    Click Button    ${SUBMIT_FORM}

Customer Creation Succeeds
    Wait Until Page Contains    ${CUSTOMER_ADDED_MESSEGE}