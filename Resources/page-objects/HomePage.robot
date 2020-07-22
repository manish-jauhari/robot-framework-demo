*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    Go To  ${HOME_URL}

Verify Page Loaded
    Wait Until Page Contains  Amazon.ca


