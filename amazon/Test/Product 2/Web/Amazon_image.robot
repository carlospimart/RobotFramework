*** Settings ***
Documentation    This is some basic info about the whole suite
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test case 1
     [Documentation]    Open and image in Amazon
     [Tags]    Smoke
     open browser     https://www.amazon.com   chrome
     sleep    5s
     click image    Products for every room in your home
     sleep    5s
     close browser

Test case 2
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
     sleep    5s
     close browser
*** Keywords ***
