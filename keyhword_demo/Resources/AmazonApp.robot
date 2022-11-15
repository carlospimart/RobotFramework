*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/SearchResults.robot
*** Variables ***
@{products} =    lamborghini    jordans

*** Keywords ***
Click "Sign In" in TopNav
    TopNav.Click on Sign In
Login
    [Arguments]    ${Username}    ${Password}
    SignIn.Login With Valid Credentials    ${Username}    ${Password}
Login With Invalid Credentials
    SignIn.Fill "Email" Field    bogus@bogus.com#
    SignIn.Fill "Password" Field    badPassword
    SignIn.Click "Sign In" Button
Search for product
    [Arguments]    ${i}
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Text on box    ${products}[${i}]
    SearchResults.Click the button
    SearchResults.Verify Page Loaded    ${products}[${i}]

Select products from search results
   Product.Select Product
   Product.Verify Page Loaded


Add product to cart
    Cart.Add Product
    Cart.Verify Page Loaded

Begin checkout
    SignIn.Ckeckout
    SignIn.Verify Page Loaded
    SignIn.Verify Element
