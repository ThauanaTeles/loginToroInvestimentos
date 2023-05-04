*** Settings ***
Resource         ../main.robot 


*** Variables ***
&{forgot_password}
...     LINK_FORGOT_YOUR_PASSWORD=//*[@id="login-form"]/footer/div/a
...     TITLE_CHANGE_MY_PASSWORD=//*[@id="global-wrapper"]/forgot-password-form/div/tr-wrapper-two-columns/section/div/div/div[2]/tr-wrapper-right-column/div/div/form/div/span
