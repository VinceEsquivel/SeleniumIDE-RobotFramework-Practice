*** Settings ***
Documentation   Unsuccessful user log in by a locked out user
...
Library         SeleniumLibrary

*** Test Cases ***

Unsuccessful user log in by a locked out user

    Open Browser    https://www.saucedemo.com/  chrome

    Page Should Contain Element     login-button

    Input Text      user-name       locked_out_user

    Input Password      password    secret_sauce

    Click Button    login-button

    Page Should Contain     Epic sadface: Sorry, this user has been locked out.

    [Teardown]  Close Browser