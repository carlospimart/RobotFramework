*** Settings ***
Documentation    This is some basic info about the whole suite
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
User must sign in to check out
     [Documentation]    This is some basic info about the test
     [Tags]    Smoke
     open browser     https://www.amazon.co.uk/    chrome
     sleep    3s
     close browser

*** Keywords ***




