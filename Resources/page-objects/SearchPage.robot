*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCHBOX_WEBELEMENT} =    id:twotabsearchtextbox
${SEARCHBUTTON_WEBELEMENT} =  xpath://*[@id="nav-search"]/form/div[2]/div/input
${SEARCH_VALIDATION_STRING} =  results for "${SEARCH_STRING}"

*** Keywords ***
Search Products
    Enter Search Text
    Click Search Button
    Verify Search Operation is Done

Enter Search Text
    Input Text  ${SEARCHBOX_WEBELEMENT}  ${SEARCH_STRING}

Click Search Button
    Click Button  ${SEARCHBUTTON_WEBELEMENT}

Verify Search Operation is Done
    Wait Until Page Contains  ${SEARCH_VALIDATION_STRING}


