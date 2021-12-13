*** Settings ***
Documentation   Sort product name (A to Z)
...
Library         SeleniumLibrary

*** Test Cases ***

Sort product name (A to Z)

    Open Browser    https://www.saucedemo.com/  chrome

    Page Should Contain Element     login-button

    Input Text      user-name       standard_user

    Input Password      password    secret_sauce

    Click Button    login-button

    Select From List By Value   xpath://*[@id="header_container"]/div[2]/div[2]/span/select      az

    Element Text Should Be     xpath://html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[1]/a/div      Sauce Labs Backpack

    [Teardown]  Close Browser