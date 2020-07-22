*** Settings ***
Documentation  Basic Test for Amazon website
Resource  ../Resources/Common.robot
Resource  ../Resources/AmazonApp.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

Library  SeleniumLibrary

*** Variables ***
${BROWSER} =  chrome
${HOME_URL} =  http://www.amazon.ca
${SEARCH_STRING} =  google glasses


*** Test Cases ***
Any User can search a product
    [Tags]  New
    AmazonApp.Search for Products


User must sign in to check out
    [Documentation]  Test to validate that a user must be signed in to proceed to checkout
    [Tags]  Smoke
    AmazonApp.Select a Product and Checkout


*** Keywords ***
