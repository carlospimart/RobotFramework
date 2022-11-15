*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${SIGN_MAIN_HEADING} =  xpath = //*[@id="authportal-main-section"]/div[2]/div/div[1]/form/div/div/div/h1
*** Keywords ***

Ckeckout
    click button   //*[@id="sc-buy-box-ptc-button"]/span/input
Verify Page Loaded
    page should contain element    ${SIGN_MAIN_HEADING}
Verify Element
    element text should be    ${SIGN_MAIN_HEADING}    Sign-In
    sleep    5s


Login With Valid Credentials
    [Arguments]    ${Username}    ${Password}
    Fill "Email" Field    ${Username}
    Fill "Password" Field    ${Password}
    Click "Sign In" Button


Fill "Email" Field
    [Arguments]    ${Username}
    Log    Filling Email Field With ${Username}
Fill "Password" Field
    [Arguments]    ${Password}
    Log    Filling Password Field With ${Password}
Click "Sign In" Button
    Log    Clicking submit button
