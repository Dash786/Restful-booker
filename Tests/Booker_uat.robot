*** Settings ***

Documentation        This is to test the login functionality of the application.

Library    SeleniumLibrary
Library    XML
Library    REST

*** Variables ***

*** Test Cases ***

Create a booking where the email is missing
    [Documentation]    This test case checks if correct error message is displayed
    Open Browser    https://automationintesting.online/  chrome
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//a[@class='nav-link'][normalize-space()='Rooms']    timeout=10s
    Click Element    xpath=//button[normalize-space()='Check Availability']
    Wait Until Element Is Visible    xpath=(//a[@class='btn btn-primary'][normalize-space()='Book now'])[1]    timeout=10
    Scroll Element Into View         xpath=(//a[@class='btn btn-primary'][normalize-space()='Book now'])[1]
    Wait Until Element Is Enabled    xpath=(//a[@class='btn btn-primary'][normalize-space()='Book now'])[1]    timeout=5
    Click Element                    xpath=(//a[@class='btn btn-primary'][normalize-space()='Book now'])[1]
    Wait Until Element Is Visible    id=doReservation    timeout=10
    Scroll Element Into View         id=doReservation 
    Wait Until Element Is Enabled    id=doReservation     timeout=5
    Click Element                    id=doReservation 
    Input Text    xpath=//input[@class='form-control room-firstname']    peter
    Input Text    xpath=//input[@class="form-control room-lastname"]     pan 
    Input Text    xpath=//input[@class="form-control room-phone"]     08765476542
    Click Element    xpath=//button[ text() = 'Reserve Now']
    Wait Until Element Is Visible    xpath=//li[normalize-space()='must not be empty']    timeout=10
    Wait Until Element Is Enabled    xpath=//li[normalize-space()='must not be empty']
    Page Should Contain Element    xpath=//li[normalize-space()='must not be empty']
    Capture Page Screenshot
    Close Browser


Create a booking with all the required information
    [Documentation]    This test case checks if the user can create a booking successfully.
    Open Browser    https://automationintesting.online/  chrome
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//a[@class='nav-link'][normalize-space()='Rooms']    timeout=10s
    Click Element    xpath=//button[normalize-space()='Check Availability']
    Wait Until Element Is Visible    xpath=(//a[@class='btn btn-primary'][normalize-space()='Book now'])[1]    timeout=10
    Scroll Element Into View         xpath=(//a[@class='btn btn-primary'][normalize-space()='Book now'])[1]
    Wait Until Element Is Enabled    xpath=(//a[@class='btn btn-primary'][normalize-space()='Book now'])[1]    timeout=5
    Click Element                    xpath=(//a[@class='btn btn-primary'][normalize-space()='Book now'])[1]
    Wait Until Element Is Visible    id=doReservation    timeout=10
    Scroll Element Into View         id=doReservation 
    Wait Until Element Is Enabled    id=doReservation     timeout=5
    Click Element                    id=doReservation 
    Input Text    xpath=//input[@class='form-control room-firstname']    peter
    Input Text    xpath=//input[@class="form-control room-lastname"]     pan 
    Input Text    xpath=//input[@class="form-control room-email"]    dash@gmail.com
    Input Text    xpath=//input[@class="form-control room-phone"]     08765476542
    Click Element    xpath=//button[ text() = 'Reserve Now']
    Wait Until Element Is Visible    xpath=//h2[normalize-space()='Booking Confirmed']    timeout=10
    Wait Until Element Is Enabled    xpath=//h2[normalize-space()='Booking Confirmed']
    Page Should Contain Element    xpath=//h2[normalize-space()='Booking Confirmed']
    Capture Page Screenshot
    Close Browser

Should be able to Delete a booking
    [Documentation]    This test case checks if the user can delete a booking successfully.
    Open Browser    https://automationintesting.online/   chrome
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//a[@class='nav-link'][normalize-space()='Rooms']    timeout=10s
    Click Element    xpath=//a[@class='nav-link'][normalize-space()='Contact']
    Input Text    id=name     molly
    Input Text    id=email    dash@gmail.com
    Input Text    id=phone    08765476542
    Input Text    id=subject    booking cancellation
    Input Text    id=description    I would like to cancel my booking.
    Scroll Element Into View        xpath=//button[normalize-space()='Submit']
    Wait Until Element Is Enabled    xpath=//button[normalize-space()='Submit']    timeout=5
    Wait Until Element Is Visible    xpath=//button[normalize-space()='Submit']
    Click Element    xpath=//button[normalize-space()='Submit']
    Wait Until Element Is Visible    xpath=//h3[contains(normalize-space(), 'Thanks for getting in touch')]    timeout=10
    Wait Until Element Is Enabled    xpath=//h3[contains(normalize-space(), 'Thanks for getting in touch')]
    Page Should Contain Element    xpath=//h3[contains(normalize-space(), 'Thanks for getting in touch')]
    Capture Page Screenshot
    Close Browser


    
*** Keywords ***

