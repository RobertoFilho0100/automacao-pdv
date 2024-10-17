### Bibliotecas
*** Settings ***
Library    FlaUILibrary


### Utils
Resource    Resource/utils/Abrir-E-Fechar-PDV.resource

### Locators
Variables    Resource/locators/login.yaml


### Pages
Resource    Resource/pages/LoginPage.resource

*** Variables ***