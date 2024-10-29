*** Settings ***
Resource    ../base.resource
Test Setup    Abrir PDV
Test Teardown    Fechar PDV

*** Variables ***
${NUMERO_MESA}    35
${CODIGO_PRODUTO}    12

*** Test Cases ***

Abrir Mesa e realizar informando cliente e lancar produto
    [Tags]    painel_de_mesas
    Realizar login no PDV
    Abrir painel de mesas
    Abrir mesa    ${NUMERO_MESA}
    Informar cliente na mesa
    Validar exibicao do cliente informado no cabecalho da mesa
    Validar exibicao da mesa aberta no cabecalho da mesa    ${NUMERO_MESA}
    Informar produto    ${CODIGO_PRODUTO}
    Abrir mesa    ${NUMERO_MESA}
    Sleep    10
