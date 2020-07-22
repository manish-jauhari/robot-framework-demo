*** Settings ***
Documentation  Basic Test for Amazon website
Library  SeleniumLibrary


*** Variables  ***







*** Test Cases ***
User must sign in to check out
    [Documentation]  Test to validate that a user must be signed in to proceed to checkout
    [Tags]  Smoke

#    Begin Web Test (Common)
    Open Browser    http://www.amazon.ca   chrome
#    sleep  3s
#    Load Home Page
    Wait Until Page Contains  Amazon.ca
#    Search Product
    Input Text  id:twotabsearchtextbox  Ferrari 458
    Click Button  xpath://*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"
#    Select Product
    Click Image  xpath://*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[4]/div/span/div/div/div/div/span/a/div/img
    Wait Until Page Contains  Back to results
#    Add To Cart
    Click Button  id:add-to-cart-button
    Wait Until Page Contains  Added to Cart
#    Proceed To Checkout
    Click Link  id:hlb-ptc-btn-native
    Page Should Contain Element  continue
#    End Web Test (Common)
    Close Browser



*** Keywords ***

#    Begin Web Test
#    Load Home Page
#    Search Product
#    Select Product
#    Add To Cart
#    Proceed To Checkout

