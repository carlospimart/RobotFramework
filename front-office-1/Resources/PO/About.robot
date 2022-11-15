*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${ABOUT_HEADER_LABEL} =    xpath=//*[@id="block-1604536567510_0"]/div/h1
*** Keywords ***
Validate Page Loaded
    wait until page contains element    ${ABOUT_HEADER_LABEL}

Validate Page Contents
    ${ElementText} =    get text    ${ABOUT_HEADER_LABEL}
    should be equal as strings    ${ElementText}    About Us    ignore_case=true
    element text should be    ${ABOUT_HEADER_LABEL}    About Us