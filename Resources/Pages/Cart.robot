*** Settings ***
Library     SeleniumLibrary
Resource    ../Keys/Cart_keys.robot

*** Keywords ***
Conferir o produto no carrinho
    Title Should Be                ${CART_TITLE}
    Page Should Contain Element    ${NAME_PRODUCT}
    Page Should Contain Element    ${QUANTIDADE}

Conferir o produto no novo carrinho
    Title Should Be                ${CART_TITLE}
    Page Should Contain Element    ${NAME_PRODUCT}
    Page Should Contain Element    ${QUANTIDADE_3}

Retornar a pagina anterior
    Go Back
    Go back




