*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =    //*[@id="root"]/frameset/frameset/frame[2]
*** Keywords ***
Navigate to
    go to    ${URL}
    sleep    3s
Verify Page Loaded
    select frame    ${LANDING_NAVIGATION_ELEMENT}
    current frame should contain    Films
    unselect frame
