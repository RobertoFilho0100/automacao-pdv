### Bibliotecas
*** Settings ***
Library    FlaUILibrary
Library    ./Resource/scripts/PyAutoGuiLibrary.py

### Utils
Resource    Resource/utils/Abrir-E-Fechar-PDV.resource

### Locators
Variables    Resource/locators/login/login.yaml
Variables    Resource/locators/HomePage/homepage.yaml
Variables    Resource/locators/InformarCliente/informarCliente.yaml
Variables    Resource/locators/VendaPage/venda.yaml
Variables    Resource/locators/Pagamento/pagamento.yaml
Variables    Resource/locators/PainelDeMesas/painelDeMesas.yaml


### Pages
Resource    Resource/pages/LoginPage.resource
Resource    Resource/pages/HomePage.resource
Resource    Resource/pages/InformarClientePage.resource
Resource    Resource/pages/VendaPage.resource
Resource    Resource/pages/PainelDeMesasPage.resource


### Hooks - Keywords genericas e uteis
Resource    Resource/Hooks.resource

*** Variables ***