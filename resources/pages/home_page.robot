*** Settings ***
Resource         ../main.robot 


*** Variables ***
&{home}
...    LINK_TO_DO_LOGIN=//*[@id="__next"]/div[2]/div/div[2]/a[1]
    

*** Keywords *** 
Que acesso o site
    Open Browser    ${geral.URL}  ${geral.BROWSER} 


####E
Acesso a página Fazer login
    Click Element                        ${home.LINK_TO_DO_LOGIN} 
    Switch Window                        new

