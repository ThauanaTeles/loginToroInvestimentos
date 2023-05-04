*** Settings ***
Resource         resource_login.robot  
Resource         ../../resources/main.robot 

Test Setup     Acessar o site 
Test Teardown   Fechar navegador


*** Test Cases ***                                  
Cenário 01: Recuperar minha senha  
    Quando clico no link Esqueceu sua senha?
    Então visualizo a tela de Alterar minha senha

