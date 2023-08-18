*** Settings ***
Library    SeleniumLibrary
Resource    ../../KeyWords/Key_Cadastro.robot

Suite Teardown    Close All Browsers
*** Test Cases ***
Caso de Teste 1 – criar um novo cadastro com sucesso 
    Dado que o usuário esteja no site "https://phptravels.com/demo/"
    Quando preencher todos os dados com dados válidos
    E realizar o calculo da soma e preencher no campo Result
    E clicar no botão Submit
    Então o sistema deve apresentar a tela com a mensagem “Thank you!”

Caso de Teste 2 – Tentar fazer um cadastro sem um campo obrigatório 
    Dado que o usuário esteja no site "https://phptravels.com/demo/"
    Quando preencher todos os dados com dados válidos menos o e-mail 
    E clicar no botão Submit
    Então o sistema deve apresentar a tela com a mensagem de obrigatoriedade do campo não preenchido
    