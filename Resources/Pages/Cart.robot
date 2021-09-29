*** Settings ***
Documentation       Aqui constam todas as ações da tela do carrinho
Resource                ../Keys/Cart_keys.robot

*** Keywords ***
Conferir o produto no carrinho
    Title Should Be                     ${CART_TITLE}
    Page Should Contain Element         ${NAME_PRODUCT}
    Page Should Contain Element         ${QUANTIDADE}

Conferir nova quantidade no carrinho
    Title Should Be                     ${CART_TITLE}
    Page Should Contain Element         ${NAME_PRODUCT}
    Page Should Contain Element         ${QUANTIDADE_2}

Conferir o valor do frete
    Page Should Contain Element         ${FRETE}


