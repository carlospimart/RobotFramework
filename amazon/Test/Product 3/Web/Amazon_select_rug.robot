*** Settings ***
Documentation    This is some basic info about the whole suite
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
User must sign in to check out
     [Documentation]    Open and Select in Amazon
     [Tags]    Smoke
     open browser     https://www.amazon.com   chrome
     wait until page contains    Prime Video
     input text    id=twotabsearchtextbox    rug santorini
     click button    //*[@id="nav-search-submit-button"]
     wait until page contains    results for "rug santorini"
     click link    //*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div/div[2]/div[1]/h2/a
     wait until page contains    Back to results
     click button    id=add-to-cart-button
     wait until page contains    Added to Cart
     click button   //*[@id="sc-buy-box-ptc-button"]/span/input
     page should contain element    //*[@id="authportal-main-section"]/div[2]/div/div[1]/form/div/div/div/h1
     element text should be    //*[@id="authportal-main-section"]/div[2]/div/div[1]/form/div/div/div/h1    Sign-In

     sleep    5s
     close browser

*** Keywords ***
