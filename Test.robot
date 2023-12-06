*** Settings ***
Documentation       Test Automation for http://automationexercise.com
Resource            ../pages/home.page.resource
Resource            ../pages/products.page.resource
Suite Setup         Open Website
Suite Teardown      Close Browser

*** Variables ***
${BROWSER}          Chrome    # or Firefox, etc.

*** Test Cases ***
Test Automation Exercise Website
    Go To Products Page
    Search For Product
    Add First Product To Cart
    Search For Another Product
    Add Second Product To Cart
    Check Cart
