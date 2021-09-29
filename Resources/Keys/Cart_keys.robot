*** Settings ***
Documentation       Aqui constam todas as variáveis da tela do carrinho

*** Variables ***
${CART_TITLE}           Carrinho de compras da Amazon.com
${NAME_PRODUCT}         xpath=//*[@class="a-truncate-cut"][contains(text(),"Notebook Dell Inspiron i15-3501-A50P")]
${QUANTIDADE}           xpath=//*[@class="a-dropdown-prompt"][contains(text(),"1")]
${QUANTIDADE_2}         xpath=//*[@class="a-dropdown-prompt"][contains(text(),"2")]
${FRETE}                css=div[class="a-section sc-sss-box"]