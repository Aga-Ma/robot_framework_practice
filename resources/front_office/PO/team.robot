*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${PAGE_HEADER}      Our Amazing Team

*** Keywords ***
Page Header Is Visible
    Wait Until Page Contains        ${PAGE_HEADER}