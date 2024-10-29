*** Settings ***
Resource    ../base.resource

*** Keywords ***
Realizar login no PDV
    Informar senha valida
    Clicar no botao Login
    Validar que PDV abriu e carregou os dados

Aguardar retornar para a Home do PDV
    Wait Until Element Exist    ${homepage.btnIniciarVenda}
