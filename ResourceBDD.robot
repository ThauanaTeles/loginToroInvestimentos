*** Settings ***
Library     SeleniumLibrary
Library     DataDriver      encoding=utf8

*** Variable ***


*** Keywords ***    
####QUANDO
Preencho o e-mail e senha
    Wait Until Page Contains Element     ${TITLE_ACCESS_ACCOUNT}
    Input Text                           ${INPUT_EMAIL}                 thauana-dte
    Input Password                       ${INPUT_PASSWORD}              ${password}
    Click Button                         ${BUTTON_TO_ENTER}

Preencho o cpf e senha
    Wait Until Page Contains Element     ${TITLE_ACCESS_ACCOUNT}
    Input Text                           ${INPUT_EMAIL}                 ${username}
    Input Password                       ${INPUT_PASSWORD}              ${password}
    Click Button                         ${BUTTON_TO_ENTER}


Clico no link Esqueceu sua senha?
    Click Button                         ${LINK_FORGOT_YOUR_PASSWORD}     

####ENTÃO
O login é realizado
    Wait Until Page Contains Element      ${TITLE_AFTER_LOGIN} 

Visualizo a tela de Alterar minha senha
    Wait Until Page Contains Element      ${TITLE_CHANGE_MY_PASSWORD}


