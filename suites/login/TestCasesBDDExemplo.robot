*** Settings ***
Resource         ../../ResourceBDD.robot    
Resource         ../../BDDpt-br.robot   
Resource         ../../resources/main.robot 

Test Setup  Acessar o site 

*** Test Cases ***
Cenário 0: Login com sucesso feito com e-mail
    Quando preencho o e-mail e senha corretamente
    Então o login é realizado

Cenário 0: Login com sucesso feito com CPF
    Quando preencho o cpf e senha corretamente
    Então o login é realizado
