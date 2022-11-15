*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Select Product
   sleep    3s
   click link    xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/div/div/div/div/div/div[2]/div[1]/h2/a
Verify Page Loaded
   wait until page contains    Back to results