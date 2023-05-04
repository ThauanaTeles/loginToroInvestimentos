*** Settings ***
Resource         resource_login.robot    
Resource         ../../resources/main.robot 

Test Setup      Acessar o site 
Test Teardown   Fechar navegador
Test Template   Login inválido

*** Test Cases ***                                                  USERNAME                            PASSWORD            ERROR_MESSAGE
Quando preencho os dados incorretamente                             thauanateles@hotmail.com            dev123456           Dados incorretos. Digite novamente.
Quando preencho o email no formato incorreto e a senha              thauanateles.hotmail.com            dev123456           Dados incorretos. Digite novamente.
Quando preencho os dados de login de um usuário não cadastrado      teste@hotmail.com                   123456              Sua senha foi bloqueada. Crie uma nova para continuar
Quando preencho apenas o campo do e-mail                            thauanateles@hotmail.com            ${EMPTY}            Senha inválida
Quando preencho apenas o campo CPF                                  12106377665                         ${EMPTY}            Senha inválida
Quando preencho apenas o campo de senha                             ${EMPTY}                            dev123456           E-mail inválido
Quando não preencho nenhum campo de login                           ${EMPTY}                            ${EMPTY}            E-mail inválido 

*** Keywords ***  
Login inválido
    [Arguments]    ${USERNAME}    ${PASSWORD}   ${ERROR_MESSAGE}
    Quando preencho os dados de login incorretamente       ${USERNAME}    ${PASSWORD}
    Então o login não é realizado                          ${ERROR_MESSAGE}
   