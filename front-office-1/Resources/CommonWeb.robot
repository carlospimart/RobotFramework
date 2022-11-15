*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Keywords ***
Begin Web Test
    open browser     ${URL}   ${BROWSER}
    maximize browser window
End Web Test
    close all browsers