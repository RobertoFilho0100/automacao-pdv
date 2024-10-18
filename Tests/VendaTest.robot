*** Settings ***
Resource    ../base.resource
Test Setup    Abrir PDV
Test Teardown    Fechar PDV

*** Test Cases ***
Realizar venda
    [Tags]    sucesso    venda
    Realizar login no PDV
    Iniciar venda pela tecla de atalho
    Informar cliente - confirmar sem informar cliente
    Informar produto na venda    2
    Fechar venda
    Sleep    10
    