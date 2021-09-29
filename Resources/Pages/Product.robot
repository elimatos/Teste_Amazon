*** Settings ***
Documentation    Aqui constam todas as ações da tela do produto
Library          RequestsLibrary
Library          Collections
Resource         ../Keys/Product_keys.robot

*** Variables ***


*** Keywords ***
Consultar frete e prazo
    Wait Until Element Is Visible    ${CONSULTA_CEP}
    Click Element                    ${CONSULTA_CEP}
    Set Browser Implicit Wait        2

Conectar na API da VIACEP
    Create Session    consultacep    ${API_VIACEP}    disable_warnings=True

Pesquisar CEP da rua
    &{PARAMS}                        Create Dictionary                        cep=${CEP_ESPERADO}
    ${ENDERECO}                      Get On Session                           consultacep            
    ...                              /ws/SP/São%20Paulo/Henri+Dunant/json/    ${PARAMS}
    Log                              ${ENDERECO.json()[0]}
    Dictionary Should Contain Key    ${ENDERECO.json()[0]}                    cep                    ${CEP_ESPERADO}
    Confere sucesso na requisição    ${ENDERECO}

Inserir CEP valido
    Wait Until Element Is Visible    ${0FIELD}
    Input Text                       ${0FIELD}    04709
    Input Text                       ${1FIELD}    110
    Click Element                    ${SEARCH}

Retornando a pagina do produto
    Go Back
    Go Back

Inserir um CEP invalido
    Wait Until Element Is Visible    ${CONSULTA_CEP}
    Click Element                    ${CONSULTA_CEP}
    Wait Until Element Is Visible    ${0FIELD}
    Input Text                       ${0FIELD}          99999
    Input Text                       ${1FIELD}          999
    Click Element                    ${SEARCH}
    Sleep                            3
    Inserir CEP valido

Conferindo mensagem de alerta
    Page Should Contain Element    ${MSG_ALERT}

Adicionar um novo item ao carrinho
    Adicionar o item ao carrinho
    Conferir nova quantidade no carrinho

Adicionar o item ao carrinho
    Reload Page
    Set Browser Implicit Wait        2
    Page Should Contain Element      ${PRODUTO_SEL}
    Wait Until Element Is Visible    ${ADD_TO_CART}
    Click Element                    ${ADD_TO_CART}
    Wait Until Element Is Visible    ${NO}
    Click Element                    ${NO}
    Wait Until Element Is Visible    ${TO_CART}
    Click Element                    ${TO_CART}

Confere sucesso na requisição
    [Arguments]       ${RESPONSE}
    Should Be True    '${RESPONSE.status_code}'=='200' or '${RESPONSE.status_code}'=='201'
    ...               msg=Erro na requisição! Verifique: ${RESPONSE}


