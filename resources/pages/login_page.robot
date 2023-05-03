*** Settings ***
Resource         ../main.robot 


*** Variables ***
&{login}
...     BUTTON_TO_ENTER=//*[@id="login-form"]/footer/button 
...     TITLE_ACCESS_ACCOUNT=//*[@id="global-wrapper"]/signin/div/div/div/section/div[2]/hub-login/div/div/div/div/header/h3
...     INPUT_EMAIL=//*[@id="username"]
...     INPUT_PASSWORD=//*[@id="password"]

