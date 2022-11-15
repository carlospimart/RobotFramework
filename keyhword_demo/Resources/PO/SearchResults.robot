*** Settings ***
Library    SeleniumLibrary
Resource    ../AmazonApp.robot
*** Variables ***
${TOPNAV_SEARCH_BUTTON} =    //input[@id="nav-search-submit-button"]
*** Keywords ***
Click the button
    click button    ${TOPNAV_SEARCH_BUTTON}

Verify Page Loaded
    [Arguments]    ${product}
    wait until page contains    results for "${product}"
