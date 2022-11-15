*** Settings ***
Documentation    This is some basic info about the whole suite

Resource    ../Resources/AmazonApp.robot
Resource    ../Resources/common.robot
Test Setup    common.Begin Web Test
Test Teardown    common.End Web Test
*** Variables ***
${BROWSER} =    chrome
${WEB_PAGE} =    http://www.amazon.com
${LOGIN_EMAIL} =    carlospimart@hotmail.com
${LOGIN_PASSWORD} =    FakePassword

*** Test Cases ***
Should be able to login from Web Home
     LandingPage.Load
     LandingPage.Verify Page Loaded
     AmazonApp.Click "Sign In" in TopNav
     AmazonApp.Login    ${LOGIN_EMAIL}

User must sign in to check out: ferrari
     [Documentation]    Open and Select in Amazon
     [Tags]    Smoke1
     AmazonApp.Search for product    1
     AmazonApp.Select products from search results
     AmazonApp.Add product to cart
     AmazonApp.Begin checkout

User must sign in to check out: lamborghini
     [Documentation]    Open and Select in Amazon
     [Tags]    Smoke2
     AmazonApp.Search for product    0
     AmazonApp.Select products from search results
     AmazonApp.Add product to cart
     AmazonApp.Begin checkout
