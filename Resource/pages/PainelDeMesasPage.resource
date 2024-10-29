*** Settings ***
Resource    ../../base.resource
Library    String

*** Variables ***
${NUM_MAXIMO_MESAS}    10 

*** Keywords ***
Informar cliente na mesa
    Click    ${painelMesas.aberturaNomeCliente}
    Set Text To Textbox    ${painelMesas.aberturaNomeCliente}    Automacao
    Click    ${painelMesas.btnSalvar}

Informar produto
    [Arguments]    ${codigo_produto}
    Click    ${painelMesas.campoCodigoProduto}
    Set Text To Textbox    ${painelMesas.campoCodigoProduto}    ${codigo_produto}
    PyAutoGuiLibrary.Press Key    ENTER
    PyAutoGuiLibrary.Press Key    ENTER
    PyAutoGuiLibrary.Press Key    ENTER
    Sleep    1
    PyAutoGuiLibrary.Press Key    ESC

Abrir mesa
     [Arguments]    ${mesa}
     Click    //Pane[@AutomationId="ControleMesa${mesa}"]

Validar exibicao do cliente informado no cabecalho da mesa
    ${NOME_CLIENTE}=    Get Text From Textbox    ${painelMesas.nomeCliente}
    ${NOME_CLIENTE}=    Evaluate    "${NOME_CLIENTE.strip().lower()}"
    Should Be Equal As Strings   ${NOME_CLIENTE}    automacao

Validar exibicao da mesa aberta no cabecalho da mesa
    [Arguments]    ${mesa}
    ${NUMERO_MESA}=    Get Text From Textbox    ${painelMesas.numeroMesa}
    Should Be Equal   "${NUMERO_MESA}"    "Mesa ${mesa}"