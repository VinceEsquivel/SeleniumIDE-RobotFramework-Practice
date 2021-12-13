*** Settings ***
Documentation   Logged in as problem user and sees a broken inventory page
...
Library         SeleniumLibrary

*** Test Cases ***

Logged in as problem user and sees a broken inventory page

    Open Browser    https://www.saucedemo.com/  chrome

    Page Should Contain Element     login-button

    Input Text      user-name       problem_user

    Input Password      password    secret_sauce

    Click Button    login-button

    Page Should Not Contain Image      src  /static/media/sl-404.168b1cce.jpg

    [Teardown]  Close Browser