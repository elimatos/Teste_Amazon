*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary
Library     Collections
Resource    ../Keys/Product_keys.robot


*** Keywords ***
Adicionar o item ao carrinho
    Set Browser Implicit Wait        2
    Page Should Contain Element      ${PRODUTO_SEL}
    Wait Until Element Is Visible    ${ADD_TO_CART}
    Click Element                    ${ADD_TO_CART}
    Wait Until Element Is Visible    ${NO}
    Click Element                    ${NO}
    Wait Until Element Is Visible    ${TO_CART}
    Click Element                    ${TO_CART}

Alterar a quantidade do item
    Wait Until Element Is Visible    ${QTD}
    Click Element                    ${QTD}
    Select From List By Label        ${QTD_2}        2

Adicionar novamente ao carrinho
    Wait Until Element Is Visible    ${ADD_TO_CART}
    Click Element                    ${ADD_TO_CART}
    Wait Until Element Is Visible    ${NO}
    Click Element                    ${NO}
    Wait Until Element Is Visible    ${TO_CART}
    Click Element                    ${TO_CART}
