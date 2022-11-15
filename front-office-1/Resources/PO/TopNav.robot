*** Settings ***
Library    SeleniumLibrary
*** Variables ***
#${TOP_NAV_ABOUT_LINK} =    css="div.header__content header__content--mobile"
${TOP_NAV_ABOUT_LINK} =    xpath=//*[@id="block-1602256221872"]/div/a[1]
*** Keywords ***
Select "About" Page
    #click link    About
    click element    ${TOP_NAV_ABOUT_LINK}
    sleep    3s