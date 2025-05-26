*** Settings ***

Documentation        This is to test the login functionality of the application.

Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Should be able to load payflex page 
    [Documentation]    This test case checks if the Payflex page loads successfully.
    Open Browser    https://customer.uat.payflex.co.za/customer/login   chrome
    Maximize Browser Window
    Title Should Be    PayFlex - Home
    Close Browser

*** Keywords ***

