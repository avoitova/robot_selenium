

*** Settings ***
Library    .venv/lib/python3.11/site-packages/robot/libraries/DateTime.py
Library    SeleniumLibrary
*** Test Cases ***

Valid Login
    Open Login Page
    Type Username    aelita2012@gmail.com
    Type Password    MakeupSe32
    Submit
    

*** Keywords ***
Open Login Page
    Open Browser    https://makeup.se/    chrome
    Maximize Browser Window
    Click Element    xpath://div[@class='header-office']    

Type Username
    [Arguments]    ${username}
    Input Text    xpath=//*[@name='user_login']    ${username}

Type Password
    [Arguments]    ${userpassword}
    Input Text    xpath=//*[@name='user_pw']    ${userpassword}

Submit
    Click Element    xpath=//button[contains(text(),'logga in')]


    