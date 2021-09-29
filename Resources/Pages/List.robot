*** Settings ***
Documentation       Aqui constam todas as ações da tela de lista dos produtos
Resource                ../Keys/List_keys.robot

*** Keywords ***
Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Element Is Visible       ${DEP_NOTE}
    Title Should Be                     ${SEARCH_TITLE}
    
Conferir nome do departamento
    Wait Until Element Is Visible       ${DEP_NOTE}
    Page Should Contain Element         ${MARCA_D}

Selecionar o produto desejado
    Wait Until Element Is Visible       ${MARCA_D}
    Click Element                       ${PRODUTO}
