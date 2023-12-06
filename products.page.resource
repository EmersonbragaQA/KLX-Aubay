*** Settings ***
Library             SeleniumLibrary
Resource            ../pages/home.page.resource

*** Variables ***
${PRODUCT_SEARCH}     men tshirt
${2_PRODUCT_SEARCH}   Sleeveless Dress
${SEARCH_FIELD}       id=search_product
${SUBMIT_SEARCH}      id=submit_search
${ADD_TO_CART}        css=.cart
${SELECT_PRODUCT}     xpath=(//a[contains(@href, 'product_details')])[1]
${CONTINUE_SHOPPING}  css=.btn-success

*** Keywords ***
Search For Product
    Wait Until Element Is Visible     ${SEARCH_FIELD}
    Input Text                        ${SEARCH_FIELD}    ${PRODUCT_SEARCH}
    Click Element                     ${SUBMIT_SEARCH}

Search For Another Product
  Wait Until Element is Visible       ${SEARCH_FIELD}
  Input Text                          ${SEARCH_FIELD}    ${2_PRODUCT_SEARCH}
  Click Element                       ${SUBMIT_SEARCH}

Add First Product To Cart
    Execute JavaScript    window.scrollBy(0, 500)
    Click Element            ${SELECT_PRODUCT}
    Wait Until Element is Enabled  ${ADD_TO_CART}
    Mouse Over                     ${ADD_TO_CART}
    Click Element            ${ADD_TO_CART}
    Wait Until Element is Visible  $${CONTINUE_SHOPPING}
    Click Element            ${CONTINUE_SHOPPING}
    Click Element            ${TAB_PRODUCTS}

Add Second Product To Cart
    Execute JavaScript        window.scrollBy(0, 500)
    Click Element             ${SELECT_PRODUCT}
    Click Element             ${ADD_TO_CART}
    Wait Until Element is Visible  $${CONTINUE_SHOPPING}
    Click Element             ${CONTINUE_SHOPPING}

Check Cart
    Click Element    xpath=//a[contains(text(),'Cart')]
    Page Should Contain Element    xpath=//td[contains(text(),'${PRODUCT_SEARCH}')]
