*** Settings ***
Resource    ../resources/front_office/fixtures.robot
Resource    ../resources/front_office/landing.robot
Resource    ../resources/front_office/navigation.robot
Resource    ../resources/front_office/team.robot

Suite Setup     Open The App
Suite Teardown      Cleanup


*** Variables ***
${BROWSER}      chrome
${URL}          https://automationplayground.com/front-office/


*** Test Cases ***
The user is able to access Team page
    Given The User Is On The "Front Office" App
    When The User Go To "Team" Page
    Then "Our Amazing Team" Page Is Open