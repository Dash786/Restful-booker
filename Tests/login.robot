*** Settings ***

Documentation        This is to test the login functionality of the application.

Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Should be able to load payflex page 
    [Documentation]    This test case checks if the Payflex page loads successfully.
    Open Browser    https://customer.uat.payflex.co.za/customer/login   chrome
    Maximize Browser Window
    Title Should Be    Payflex
    Close Browser


Should be able to login with valid credentials
    [Documentation]    This test case checks if the user can log in with valid credentials.
    Open Browser    https://customer.uat.payflex.co.za/customer/login   chrome
    Maximize Browser Window
    Input Text    id=email    pftestfred+reg050@gmail.com
    Input Text    id=password    Test!23456
    Click Element    xpath=(//button[normalize-space()='Login'])[1]
    Wait Until Element Is Visible    xpath=(//a[normalize-space()='Dashboard'])[1]    timeout=10s
    Page Should Contain Element      xpath=(//a[normalize-space()='Dashboard'])[1]
    Location Should Be    https://customer.uat.payflex.co.za/customer/dashboard
    Wait Until Element Is Visible    xpath=//p[@class='email-icon']    timeout=10s
    Element Should Contain    xpath=//p[@class='email-icon']    pftestfred+reg050@gmail.com
    Capture Page Screenshot
    Close Browser


Should be able to update profile details 
    [Documentation]    This test case checks if the user can update their profile details.
    Open Browser    https://customer.uat.payflex.co.za/customer/login   chrome
    Maximize Browser Window
    Input Text    id=email    pftestfred+reg050@gmail.com
    Input Text    id=password    Test!23456
    Click Element    xpath=(//button[normalize-space()='Login'])[1]
    Wait Until Element Is Visible       xpath=(//span[@class='pencil-icon'])[1]    timeout=10s
    Click Element    xpath=(//span[@class='pencil-icon'])[1]
    Input Text    id=customerNickname   Test User
    Click Button    xpath=//button[normalize-space()='Update Account']
    Wait Until Element Is Visible    xpath=//ngb-toast[@class = 'toast bg-success text-light fade show']    timeout=10s
    Page Should Contain Element    xpath=//ngb-toast[@class = 'toast bg-success text-light fade show']
    Capture Page Screenshot
    Close Browser
*** Keywords ***

