*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com/login
${BROWSER}  headlessChrome


*** Keywords ***
Open my Browser
    open browser  ${LOGIN URL}  ${BROWSER}
    maximize browser window

Close Browser
    close all browsers

Open Login page

    go to  ${LOGIN URL}

Input User name
    [Arguments]  ${username}
    input text  id:Email  ${username}

Input Password

    [Arguments]  ${password}
    input text  id:Password  ${password}

Click Login Button
    click element  xpath://button[contains(text(),'Log in')]

Click Logout link
    click link  Logout

Error message should be visible
    page should contain  Login was unsuccessful

Dashboard page should be visible
    page should contain  Dashboard

