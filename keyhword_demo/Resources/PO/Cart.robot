*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Add Product
    click button    id=add-to-cart-button

Verify Page Loaded
    wait until page contains    Added to Cart