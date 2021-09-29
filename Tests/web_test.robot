*** Settings ***
Resource            ../Resources/Pages/Home.robot
Resource            ../Resources/Pages/Cart.robot
Resource            ../Resources/Pages/List.robot
Resource            ../Resources/Pages/Product.robot
Suite Setup         Abrir navegador
Suite Teardown      Fechar navegador

*** Test Case ***
Pesquisar produto
    Dado que estou na página home do site Amazon
    Quando eu pesquisar pelo produto "Notebook Dell Inspiron i15-3501-A50P"
    Então o produto "Notebook" deve ser listado na página de resultado da busca

Adicionar o produto ao carrinho
    Dado que estou na página de listagem de produtos
    Quando eu selecionar o produto
    E adicionar o produto ao carrinho
    Então o produto deve constar no carrinho

Alterando a quantidade do item
    Dado que eu retorno a pagina do produto
    E altero a quantidade do item
    Então o pedido deve ter uma nova quantidade

*** Keywords ***

Dado que estou na página home do site Amazon
    Acessar a página home do site

Quando eu pesquisar pelo produto "${PRODUTO}"
    Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Clicar no botão pesquisar

Então o produto "${PRODUTO}" deve ser listado na página de resultado da busca
    Conferir se o produto "${PRODUTO}" foi listado no site

Dado que estou na página de listagem de produtos
    Conferir nome do departamento    

Quando eu selecionar o produto
    Selecionar o produto desejado

E adicionar o produto ao carrinho
    Adicionar o item ao carrinho

Então o produto deve constar no carrinho
    Conferir o produto no carrinho

Dado que eu retorno a pagina do produto
    Retornar a pagina anterior

E altero a quantidade do item
    Alterar a quantidade do item

Então o pedido deve ter uma nova quantidade
    Adicionar novamente ao carrinho
    Conferir o produto no novo carrinho




