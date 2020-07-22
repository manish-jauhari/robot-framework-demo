*** Settings ***
Resource  ./page-objects/HomePage.robot
Resource  ./page-objects/SearchPage.robot
Resource  ./page-objects/SignInPage.robot
Resource  ./page-objects/SearchResultPage.robot
Resource  ./page-objects/CartPage.robot


*** Keywords ***
Search for Products
    HomePage.Load
    HOmePage.Verify Page Loaded
    SearchPage.Search Products

Select a Product and Checkout
    Search for Products
    SearchResultPage.Select Product
    CartPage.Add to Cart
    CartPage.Proceed To Checkout