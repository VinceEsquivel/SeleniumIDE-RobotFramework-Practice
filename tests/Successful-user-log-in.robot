*** Settings ***
Documentation   Successful user log in
...
Library         SeleniumLibrary

*** Test Cases ***

Successful user log in

    Open Browser    https://www.saucedemo.com/  chrome

    Page Should Contain Element     login-button

    Input Text      user-name       standard_user

    Input Password      password    secret_sauce

    Click Button    login-button

    Page Should Not Contain Image      class:title     PRODUCTS

    [Teardown]  Close Browser