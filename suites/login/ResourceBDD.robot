*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${ERROR_MESSAGE}                    xpath=//*[@id="login-form"]/section/p
${LINK_FORGOT_YOUR_PASSWORD}        xpath=//*[@id="login-form"]/footer/div/a
${TITLE_CHANGE_MY_PASSWORD}         xpath=//*[@id="global-wrapper"]/forgot-password-form/div/tr-wrapper-two-columns/section/div/div/div[2]/tr-wrapper-right-column/div/div/form/div/span

*** Keywords ***    
####QUANDO
Quando preencho o e-mail e senha corretamente
    Wait Until Page Contains Element     ${login.TITLE_ACCESS_ACCOUNT}
    Input Text                           ${login.INPUT_EMAIL}                 thauana-dteles@hotmail.com
    Input Password                       ${login.INPUT_PASSWORD}              dev123456
    Click Button                         ${login.BUTTON_TO_ENTER}

Quando preencho o cpf e senha corretamente
    Wait Until Page Contains Element     ${login.TITLE_ACCESS_ACCOUNT}
    Input Text                           ${login.INPUT_EMAIL}                 12106377665
    Input Password                       ${login.INPUT_PASSWORD}              dev123456
    Click Button                         ${login.BUTTON_TO_ENTER}

Quando clico no link Esqueceu sua senha?
    Click Link                         ${LINK_FORGOT_YOUR_PASSWORD}     

Quando preencho os dados incorretamente
    Wait Until Page Contains Element     ${login.TITLE_ACCESS_ACCOUNT}
    Input Text                           ${login.INPUT_EMAIL}                 usuariotes@hotmail.com
    Input Password                       ${login.INPUT_PASSWORD}              123456
    Click Button                         ${login.BUTTON_TO_ENTER}



####ENTÃO
Então o login é realizado
    Wait Until Page Contains Element      ${validation_user.TITLE_AFTER_LOGIN} 

Então visualizo a tela de Alterar minha senha
    Wait Until Page Contains Element      ${TITLE_CHANGE_MY_PASSWORD}

Então o login não é realizado
    Wait Until Page Contains Element      ${ERROR_MESSAGE}