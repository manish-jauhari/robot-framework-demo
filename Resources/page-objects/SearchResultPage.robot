*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PRODUCT_WEBELEMENT} =  xpath =  //*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[2]/div/span/div/div/div/div/div[2]/h2/a/span
${PRODUCT_VALIDATION_STRING} =  Back to results

*** Keywords ***
Select Product
    Click Element  ${PRODUCT_WEBELEMENT}
    Validate Selection

Validate Selection
    Wait Until Page Contains  ${PRODUCT_VALIDATION_STRING}