*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR} =    id=twotabsearchtextbox
*** Keywords ***
Text on box
    # TODO - Example how to use Todo
    [Arguments]    ${product}
    input text    ${TOPNAV_SEARCH_BAR}    ${product}
Click on Sign In
    click button    //a[@id='nav-link-accountList-nav-line-1']
    sleep    2s



