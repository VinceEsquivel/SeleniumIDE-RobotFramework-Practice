*** Settings ***
Documentation   Typed wrong password
...
Library         SeleniumLibrary

*** Test Cases ***

Typed wrong password

    Open Browser    https://www.saucedemo.com/  chrome

    Page Should Contain Element     login-button

    Input Text      user-name       standard_user

    Input Password      password    secret_saucee

    Click Button    login-button

    Page Should Contain     Epic sadface: Username and password do not match any user in this service

    [Teardown]  Close Browser