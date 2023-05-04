*** Settings ***
Library     SeleniumLibrary


*** Keywords ***    
####QUANDO
Quando preencho o username e senha corretamente
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Wait Until Page Contains Element     ${login.TITLE_ACCESS_ACCOUNT}
    Input Text                           ${login.INPUT_EMAIL}                 ${USERNAME} 
    Input Password                       ${login.INPUT_PASSWORD}              ${PASSWORD}
    Click Button                         ${login.BUTTON_TO_ENTER}

Quando clico no link Esqueceu sua senha?
    Click Link                         ${forgot_password.LINK_FORGOT_YOUR_PASSWORD}     

Quando preencho os dados de login incorretamente
    [Arguments]    ${USERNAME}    ${PASSWORD}  

    Wait Until Page Contains Element     ${login.TITLE_ACCESS_ACCOUNT}
    Input Text                           ${login.INPUT_EMAIL}                 ${USERNAME} 
    Input Password                       ${login.INPUT_PASSWORD}              ${PASSWORD}
    Click Button                         ${login.BUTTON_TO_ENTER}

####ENTÃO
Então o login é realizado
    Wait Until Page Contains Element      ${validation_user.TITLE_AFTER_LOGIN} 

Então visualizo a tela de Alterar minha senha
    Wait Until Page Contains Element      ${forgot_password.TITLE_CHANGE_MY_PASSWORD}

Então o login não é realizado
    [Arguments]   ${ERROR_MESSAGE}
    Wait Until Page Contains         ${ERROR_MESSAGE}
