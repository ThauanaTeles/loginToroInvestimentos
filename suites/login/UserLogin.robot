*** Settings ***
Resource         ResourceBDD.robot    
Resource         ../../resources/main.robot 

Test Setup     Acessar o site 
Test Teardown   Fechar navegador

*** Test Cases ***
Cenário 0: Login com sucesso feito com e-mail
    Quando preencho o e-mail e senha corretamente
    Então o login é realizado

Cenário 0: Login com sucesso feito com CPF
    Quando preencho o cpf e senha corretamente
    Então o login é realizado

Cenário 0: Recuperar minha senha
    Quando clico no link Esqueceu sua senha?
    Então visualizo a tela de Alterar minha senha

Cenário 0: Tentativa de login com dados incorretos
    Quando preencho os dados incorretamente
    Então o login não é realizado
