*** Settings ***
Resource    ../../base.resource

*** Variables ***
${PDV_SENHA}    7711

*** Keywords ***
Informar senha valida
    Click    ${login.senha}
    Set Text To Textbox    ${login.senha}    ${PDV_SENHA}

Clicar no botao Login
    Click    ${login.btnLogin}
    