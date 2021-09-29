* Settings *
Documentation       Aqui constam todas as ações da tela Home
Library             SeleniumLibrary
Library             String
Resource            ../Keys/Home_keys.robot

*** Keywords ***
Abrir navegador
    Open Browser        about:blank   ${BROWSER}

Fechar navegador
    Close Browser

Acessar a página home do site
    Go To                            ${HOME_URL}
    Maximize Browser Window
    Wait Until Element Is Visible    ${HOME_TOPMENU}
    Title Should Be                  ${HOME_TITLE}

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text          ${HOME_FIELD_PESQUISAR}    ${PRODUTO}

Clicar no botão pesquisar
    Click Element       ${HOME_BTN_PESQUISAR}

