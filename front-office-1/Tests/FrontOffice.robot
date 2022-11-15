*** Settings ***
Resource    ../Resources/FrontOfficeApp.robot
Resource    ../Resources/CommonWeb.robot
Test Setup    CommonWeb.Begin Web Test
Test Teardown    CommonWeb.End Web Test
*** Variables ***

${BROWSER} =    chrome
${URL} =    https://www.robotframeworktutorial.com
*** Test Cases ***
Should be able to access "About" page
    [Documentation]    This is test 1
    [Tags]    test1
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "About" Page

"About" page should match requirements
    [Documentation]    This is test 2
    [Tags]    test2
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "About" Page
    FrontOfficeApp.Validate "About" Page