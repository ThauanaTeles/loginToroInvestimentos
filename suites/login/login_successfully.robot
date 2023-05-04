*** Settings ***
Resource         resource_login.robot    
Resource         ../../resources/main.robot 

Test Setup      Acessar o site 
Test Teardown   Fechar navegador
Test Template   Realizar login com sucesso


*** Test Cases ***                                USERNAME                            PASSWORD          
Quando preencho o e-mail e senha                  thauana-dteles@hotmail.com          dev123456
Quando preencho o cpf e senha                     12106377665                         dev123456


*** Keywords ***  
Realizar login com sucesso
    [Arguments]     ${USERNAME}    ${PASSWORD}
    Quando preencho o username e senha corretamente     ${USERNAME}    ${PASSWORD}
    Então o login é realizado   
   