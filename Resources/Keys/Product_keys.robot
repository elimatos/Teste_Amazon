*** Settings ***
Documentation       Aqui constam todas as variáveis da tela do produt

*** Variables ***
${PRODUTO_SEL}     id=productTitle
${ADD_TO_CART}     id=add-to-cart-button
${NO}              id=attachSiNoCoverage
${TO_CART}         id=hlb-view-cart-announce
${CONSULTA_CEP}    id=contextualIngressPtLabel_deliveryShortLine
${API_VIACEP}      https://viacep.com.br
${CEP_URI}         /ws
${0FIELD}          id=GLUXZipUpdateInput_0
${1FIELD}          id=GLUXZipUpdateInput_1
${SEARCH}          id=GLUXZipUpdate
${CEP_ESPERADO}    04709-110
${MSG_ALERT}       xpath=//*[@id="GLUXZipError"]//*[contains(text(),"Insira um CEP válido")]