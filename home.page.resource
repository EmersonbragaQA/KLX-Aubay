*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${URL}              http://automationexercise.com
${BROWSER}          Chrome
${TAB_PRODUCTS}     css=.navbar-nav > li:nth-child(2) > a

*** Keywords ***
Open Website
    Open Browser                     ${URL}    ${BROWSER}
    Maximize Browser Window

Go To Products Page
    Click Element                     ${TAB_PRODUCTS}
