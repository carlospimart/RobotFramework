*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***

Load
    Go To    ${WEB_PAGE}

Verify Page Loaded
    wait until page contains    amazon.com
