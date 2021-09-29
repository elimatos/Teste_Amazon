*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CART_TITLE}      Carrinho de compras da Amazon.com
${NAME_PRODUCT}    xpath=//*[@class="a-truncate-cut"][contains(text(),"Notebook Dell Inspiron i15-3501-A50P")]
${QUANTIDADE}      xpath=//*[@class="a-dropdown-prompt"][contains(text(),"1")]
${QUANTIDADE_3}    xpath=//*[@class="a-dropdown-prompt"][contains(text(),"3")]