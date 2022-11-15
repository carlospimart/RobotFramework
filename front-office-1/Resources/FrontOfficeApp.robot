*** Settings ***
Resource    ./PO/Landing.robot
Resource    ./PO/About.robot
Resource    ./PO/TopNav.robot
*** Variables ***

*** Keywords ***
Go to Landing Page
    Landing.Navigate to
    Landing.Verify Page Loaded

Go to "About" Page
    TopNav.Select "About" Page

Validate "About" Page
    About.Validate Page Contents