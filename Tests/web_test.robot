*** Settings ***
Documentation       Aqui constam todas os casos de teste
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

Selecionar o Produto
    Dado que estou na página de listagem de produtos
    Quando eu selecionar o produto

Consultar o CEP do VIACEP
    Conectando na API da VIACEP
    Pesquisando o CEP da rua
    E consultar o frete e prazo de entrega
    Inserindo um CEP valido

  
Adicionar o produto ao carrinho
    E adicionar o produto ao carrinho
    Então o produto deve constar no carrinho
    Verificar o frete

Consultando um CEP Invalido
    Dado que retorno a pagina do produto
    E insiro um CEP invalido
    E deve ser apresentado um alerta
    Então adiciono mais um item ao carrinho 


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

E consultar o frete e prazo de entrega
    Consultar frete e prazo

Conectando na API da VIACEP
    Conectar na API da VIACEP

Pesquisando o CEP da rua
    Pesquisar CEP da rua

Inserindo um CEP valido
    Inserir CEP valido

Dado que retorno a pagina do produto
    Retornando a pagina do produto

E insiro um CEP invalido
    Inserir um CEP invalido

E deve ser apresentado um alerta
    Conferindo mensagem de alerta

Então adiciono mais um item ao carrinho
    Adicionar um novo item ao carrinho 

E adicionar o produto ao carrinho
    Adicionar o item ao carrinho

Então o produto deve constar no carrinho
    Conferir o produto no carrinho

Verificar o frete
    Conferir o valor do frete



