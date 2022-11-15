*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =    //*[@id="block-1606257794354_0"]/div/h3/strong
*** Keywords ***
Navigate to
    go to    ${URL}
Verify Page Loaded
    wait until page contains element    ${LANDING_NAVIGATION_ELEMENT}
