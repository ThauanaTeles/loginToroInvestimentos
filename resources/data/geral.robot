*** Settings ***
Resource         ../main.robot 


*** Variable ***
&{geral}
...   URL=https://www.toroinvestimentos.com.br/ 
...   BROWSER=chrome
...   LINK_TO_DO_LOGIN=//*[@id="__next"]/div[2]/div/div[2]/a[1]

