*** Settings ***
Resource    ../Resources/SakilaDBApp.robot
Resource    ../Resources/CommonWeb.robot
Test Setup    CommonWeb.Begin Web Test
Test Teardown    CommonWeb.End Web Test
*** Variables ***
${BROWSER} =    chrome
${URL} =    http://localhost:3000/


*** Test Cases ***
Should be able to add a new language in "LocalHost"
    [Documentation]    This is test 1
    [Tags]    test1
    ${new_browser} =  Get Selection From User  Which browser?  chrome  ie  edge
    Set Global Variable  ${BROWSER}  ${new_browser}
    SakilaDBApp.Go to Landing Page
    SakilaDBApp.Go to languages
    SakilaDBApp.Click Add new language
    SakilaDBApp.Fill new language box
    SakilaDBApp.Submit New Language
Should be able to access "LocalHost"
    [Documentation]    This is test 1
    [Tags]    test1

    SakilaDBApp.Go to Landing Page
    SakilaDBApp.Go to languages
