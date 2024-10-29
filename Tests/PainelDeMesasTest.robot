*** Settings ***
Resource    ../base.resource
Test Setup    Abrir PDV
Test Teardown    Fechar PDV

*** Test Cases ***

Abrir Mesa e realizar informando cliente e lancar produto
    [Tags]    painel_de_mesas
    Realizar login no PDV
    Abrir painel de mesas
    Abrir mesa    35
    Informar cliente na mesa
    Validar exibicao do cliente informado no cabecalho da mesa
    Validar exibicao da mesa aberta no cabecalho da mesa    35
    Informar produto    12    
    Abrir mesa    35
    Sleep    10
