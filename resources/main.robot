*** Settings ***
Library     SeleniumLibrary


### Data ###
Resource         data/geral.robot


### Sharead ###
Resource         shared/setup_teardown.robot


### Pages ###
Resource         pages/home_page.robot
##Resource         pages/forgot_your_passwor_page.robot
##Resource         pages/login_page.robot
##Resource         pages/token_validation_page.robot