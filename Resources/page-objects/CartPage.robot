*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CART_BUTTON_WEBELEMENT} =  add-to-cart-button
${CART_VALIDATION_STRING} =  Added to Cart
${CHECKOUT_LINK_WEBELEMENT} =  id:hlb-ptc-btn-native
${CHECKOUT_VALIDATION_STRING} =  continue

*** Keywords ***
Add to Cart
    sleep  1s
    Click Button  ${cart_button_webelement}
    Validate product Added

Validate product Added
    Wait Until Page Contains  Added to Cart

Proceed To Checkout
    Click Link  ${checkout_link_webelement}
    Page Should Contain Element  ${checkout_validation_string}