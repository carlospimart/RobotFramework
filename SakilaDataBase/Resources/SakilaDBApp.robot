*** Settings ***
Resource    ./PO/Landing.robot
Resource    ./PO/Languages.robot
*** Variables ***

*** Keywords ***
Go to Landing Page
    Landing.Navigate to
    Landing.Verify Page Loaded
Go to Languages
    Languages.Click Languages Button
Click Add new language
    Languages.Click " Add a new language" Button
Fill new language box
    Languages.Type A Language
Submit New Language
    Languages.Submit
#    Languages.Verify Page Loaded